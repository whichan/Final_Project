#ifndef UART_PROTOCOL_H
#define UART_PROTOCOL_H
#include <stdio.h>
#include <string.h>

#include "stm32f4xx_hal.h"

// 프레임 상수
#define PROTO_SOF           0xAA
#define PROTO_MAX_PAYLOAD   32
#define PROTO_HEADER_SIZE   3
#define PROTO_CRC_SIZE      1
#define PROTO_MAX_PKT_SIZE  (PROTO_HEADER_SIZE + PROTO_MAX_PAYLOAD + PROTO_CRC_SIZE)

// PC -> STM32 TEMP HUMID CMD CODE
#define CMD_TEMP_HUMID_MIN  0x10
#define CMD_REQUEST_DATA    0x10
#define CMD_SET_INTERVAL    0x11
#define CMD_SET_BACKLIGHT   0x12
#define CMD_PING            0x13
#define CMD_TEMP_HUMID_MAX  0x1F

// PC -> STM32 RTC CMD CODE
#define CMD_RTC_MIN         0x20
#define CMD_GET_TIME        0x20
#define CMD_SET_TIME        0x21
#define CMD_GET_DATE        0x22
#define CMD_SET_DATE        0x23
#define CMD_RTC_MAX         0x2F

// PC -> STM32 FAN CMD CODE
#define CMD_FAN_MIN         0x30
#define CMD_FAN_SET_MODE    0x30
#define CMD_FAN_SET_SPEED   0x31
#define CMD_FAN_GET_STATUS  0x32
#define CMD_FAN_MAX         0x3F

// ── 신규: PC -> STM32 FIRE CMD CODE ──────────────────
#define CMD_FIRE_MIN        0x40
#define CMD_FIRE_GET_STATUS 0x40  // 현재 화재 상태 요청
#define CMD_FIRE_MAX        0x4F
// ─────────────────────────────────────────────────────

// STM32 -> PC RESPONSE CODE
#define CMD_SENSOR_DATA         0x81
#define CMD_ACK                 0x82
#define CMD_ERROR               0x83
#define CMD_PONG                0x84
#define CMD_TIME_DATA           0x85
#define CMD_DATE_DATA           0x86
#define CMD_FAN_STATUS          0x87

// ── 신규: STM32 -> PC 화재 이벤트 RESPONSE CODE ──────
#define CMD_FIRE_DETECTED       0x88  // 화재 발생 시각 전송
#define CMD_FIRE_EXTINGUISHED   0x89  // 진압 완료 + 소요시간 전송
#define CMD_FIRE_STATUS         0x8A  // 현재 화재 상태 응답
// ─────────────────────────────────────────────────────

// ERROR CODE
#define ERR_DHT11_TIMEOUT   0x01
#define ERR_DHT11_CHECKSUM  0x02
#define ERR_INVALID_CMD     0x03
#define ERR_INVALID_CRC     0x04
#define ERR_INVALID_LEN     0x05

// ── 신규: 센서 데이터 전송용 CMD ──
#define CMD_SENSOR_MIN        0x50
#define CMD_SEND_MPU_DATA     0x50  // 진동 데이터 (Z축)
#define CMD_SEND_CUR_DATA     0x51  // 전류 데이터 (WCS1800)
#define CMD_SENSOR_MAX        0x5F

typedef enum {
    PARSE_STATE_SOF = 0,
    PARSE_STATE_LEN,
    PARSE_STATE_CMD,
    PARSE_STATE_PAYLOAD,
    PARSE_STATE_CRC
} ParseState_t;

typedef struct {
    ParseState_t state;
    uint8_t len;
    uint8_t cmd;
    uint8_t payload[PROTO_MAX_PAYLOAD];
    uint8_t payloadIdx;
} ParseCtx_t;

typedef struct {
    uint8_t len;
    uint8_t cmd;
    uint8_t payload[PROTO_MAX_PAYLOAD];
} Packet_t;

uint16_t Proto_BuildPacket(uint8_t *buf, uint8_t cmd, uint8_t *payload,
        uint8_t payloadLen);
uint8_t Proto_CRC8(uint8_t *data, uint16_t len);
void Proto_ParseReset(ParseCtx_t *ctx);
uint8_t Proto_ParseByte(ParseCtx_t *ctx, uint8_t byte, Packet_t *out);

#endif
