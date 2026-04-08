#include <stdio.h>
#include <string.h>
#include "stm32f4xx_hal.h"
#include "uart_protocol.h"

#define UART_RX_DMA_BUF_SIZE 64

void UART_COM_Init(UART_HandleTypeDef *huart);

uint8_t UART_COM_TempHumid_isRxReady();
Packet_t* UART_COM_TempHumid_GetPacket();

uint8_t UART_COM_RTC_isRxReady();
Packet_t* UART_COM_RTC_GetPacket();

uint8_t UART_COM_FAN_isRxReady();
Packet_t* UART_COM_FAN_GetPacket();

uint8_t UART_COM_FIRE_isRxReady();
Packet_t* UART_COM_FIRE_GetPacket();

void UART_COM_SendPacket(uint8_t cmd, uint8_t *payload, uint8_t payloadLen);
void UART_COM_RxEventHandler(uint16_t size);
