/*
 * uart_com.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */


#include "uart_com.h"
#include <string.h>
#include <stdio.h>

static UART_HandleTypeDef *_huart;

void UART_Com_Init(UART_HandleTypeDef *huart) {
    _huart = huart;
}

void UART_Com_SendStatus(RobotStatus_t status) {
    char buf[64];

    switch (status) {
        case ROBOT_STATUS_IDLE:
            snprintf(buf, sizeof(buf), "{\"robot1_status\":\"idle\"}\n");
            break;
        case ROBOT_STATUS_MOVING:
            snprintf(buf, sizeof(buf), "{\"robot1_status\":\"moving\"}\n");
            break;
        case ROBOT_STATUS_DONE:
            snprintf(buf, sizeof(buf), "{\"robot1_status\":\"done\"}\n");
            break;
        case ROBOT_STATUS_ERROR:
            snprintf(buf, sizeof(buf), "{\"robot1_status\":\"error\"}\n");
            break;
        default:
            return;
    }

    HAL_UART_Transmit(_huart, (uint8_t *)buf, strlen(buf), 100);
}
