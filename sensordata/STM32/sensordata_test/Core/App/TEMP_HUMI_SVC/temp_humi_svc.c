#include "temp_humi_svc.h"

static volatile uint32_t g_interval_ms = 3000;
Packet_t *rxTempHumidPacket;

void TempHumid_Excute() {
    if (!UART_COM_TempHumid_isRxReady()) {
        return;
    }

    rxTempHumidPacket = UART_COM_TempHumid_GetPacket();

    switch (rxTempHumidPacket->cmd) {
    case CMD_SET_INTERVAL:
        g_interval_ms = (uint32_t)rxTempHumidPacket->payload[0] * 1000;
        uint8_t acked = CMD_SET_INTERVAL;
        UART_COM_SendPacket(CMD_ACK, &acked, 1);
        break;
    case CMD_SET_BACKLIGHT:
        if (rxTempHumidPacket->payload[0] == 0) {
            LCD_backLight_Off();
        } else {
            LCD_backLight_On();
        }
        break;
    case CMD_PING:
        UART_COM_SendPacket(CMD_PONG, NULL, 0);
        break;
    default:
        uint8_t err = ERR_INVALID_CMD;
        UART_COM_SendPacket(CMD_ERROR, &err, 1);
        break;
    }
}

uint32_t TempHumid_GetInterval() {
    return g_interval_ms;
}
