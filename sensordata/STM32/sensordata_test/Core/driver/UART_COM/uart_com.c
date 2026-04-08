#include "uart_com.h"
#include "stm32f4xx_hal.h"

ParseCtx_t s_parseCtx;

Packet_t s_dht11Pkt;
uint8_t s_dht11RxReady = 0;

Packet_t s_rtcPkt;
uint8_t s_rtcRxReady = 0;

Packet_t s_fanPkt;
uint8_t s_fanRxReady = 0;

// ── 신규: FIRE 패킷 ──
Packet_t s_firePkt;
uint8_t s_fireRxReady = 0;
// ────────────────────

uint8_t s_rxBuf[UART_RX_DMA_BUF_SIZE];
uint8_t s_txBuf[PROTO_MAX_PKT_SIZE];
UART_HandleTypeDef *s_huart;

void UART_COM_Init(UART_HandleTypeDef *huart) {
    s_huart = huart;
    Proto_ParseReset(&s_parseCtx);
    memset(s_rxBuf, 0, sizeof(s_rxBuf));
    HAL_UARTEx_ReceiveToIdle_DMA(s_huart, s_rxBuf, UART_RX_DMA_BUF_SIZE);
    __HAL_DMA_DISABLE_IT(s_huart->hdmarx, DMA_IT_HT);
}

uint8_t UART_COM_TempHumid_isRxReady() {
    return s_dht11RxReady;
}
Packet_t* UART_COM_TempHumid_GetPacket() {
    s_dht11RxReady = 0;
    return &s_dht11Pkt;
}

uint8_t UART_COM_RTC_isRxReady() {
    return s_rtcRxReady;
}
Packet_t* UART_COM_RTC_GetPacket() {
    s_rtcRxReady = 0;
    return &s_rtcPkt;
}

uint8_t UART_COM_FAN_isRxReady() {
    return s_fanRxReady;
}
Packet_t* UART_COM_FAN_GetPacket() {
    s_fanRxReady = 0;
    return &s_fanPkt;
}

// ── 신규: FIRE ──
uint8_t UART_COM_FIRE_isRxReady() {
    return s_fireRxReady;
}
Packet_t* UART_COM_FIRE_GetPacket() {
    s_fireRxReady = 0;
    return &s_firePkt;
}
// ────────────────

//void UART_COM_SendPacket(uint8_t cmd, uint8_t *payload, uint8_t payloadLen) {
//    uint16_t pktLen = Proto_BuildPacket(s_txBuf, cmd, payload, payloadLen);
//    HAL_UART_Transmit(s_huart, s_txBuf, pktLen, 1000);
//}

void UART_COM_SendPacket(uint8_t cmd, uint8_t *payload, uint8_t payloadLen) {
    // 1. 이전 DMA 전송이 완료되었는지 확인 (Busy 체크)
    // 1kHz 주기이므로 보통 완료되어 있겠지만, 안전을 위해 체크합니다.
    while (HAL_UART_GetState(s_huart) == HAL_UART_STATE_BUSY_TX ||
           HAL_UART_GetState(s_huart) == HAL_UART_STATE_BUSY_TX_RX);

    // 2. 패킷 빌드 (s_txBuf에 데이터 저장)
    uint16_t pktLen = Proto_BuildPacket(s_txBuf, cmd, payload, payloadLen);

    // 3. DMA 방식으로 전송 시작
    // 이제 CPU는 전송 명령만 내리고 바로 다음 루틴(센서 읽기 등)으로 넘어갑니다.
    HAL_UART_Transmit_DMA(s_huart, s_txBuf, pktLen);
}

// MPU-6050 가속도 데이터를 Basys3로 전송하는 함수 예시
void UART_COM_SendMpuData(int16_t z_axis) {
    uint8_t payload[2];
    payload[0] = (uint8_t)((z_axis >> 8) & 0xFF); // High Byte
    payload[1] = (uint8_t)(z_axis & 0xFF);        // Low Byte

    // 기존 Proto_BuildPacket과 HAL_UART_Transmit 활용
    UART_COM_SendPacket(CMD_SEND_MPU_DATA, payload, 2);
}

void UART_COM_RxEventHandler(uint16_t size) {
    if (size == 0) {
        HAL_UARTEx_ReceiveToIdle_DMA(s_huart, s_rxBuf, UART_RX_DMA_BUF_SIZE);
        __HAL_DMA_DISABLE_IT(s_huart->hdmarx, DMA_IT_HT);
        return;
    }

    Packet_t tempPkt;
    for (int i = 0; i < size; i++) {
        if (!Proto_ParseByte(&s_parseCtx, s_rxBuf[i], &tempPkt)) {
            continue;
        }
        if ((tempPkt.cmd >= CMD_TEMP_HUMID_MIN) && (tempPkt.cmd <= CMD_TEMP_HUMID_MAX)) {
            s_dht11Pkt = tempPkt;
            s_dht11RxReady = 1;
        } else if ((tempPkt.cmd >= CMD_RTC_MIN) && (tempPkt.cmd <= CMD_RTC_MAX)) {
            s_rtcPkt = tempPkt;
            s_rtcRxReady = 1;
        } else if ((tempPkt.cmd >= CMD_FAN_MIN) && (tempPkt.cmd <= CMD_FAN_MAX)) {
            s_fanPkt = tempPkt;
            s_fanRxReady = 1;
        // ── 신규: FIRE 라우팅 ──
        } else if ((tempPkt.cmd >= CMD_FIRE_MIN) && (tempPkt.cmd <= CMD_FIRE_MAX)) {
            s_firePkt = tempPkt;
            s_fireRxReady = 1;
        // ──────────────────────
        }
    }

    memset(s_rxBuf, 0, sizeof(s_rxBuf));
    HAL_UARTEx_ReceiveToIdle_DMA(s_huart, s_rxBuf, UART_RX_DMA_BUF_SIZE);
    __HAL_DMA_DISABLE_IT(s_huart->hdmarx, DMA_IT_HT);
}
