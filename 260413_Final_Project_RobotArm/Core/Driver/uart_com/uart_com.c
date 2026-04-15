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


void UART_Com_ReceiveAngles(float *angles) {
    uint8_t buf[64] = {0};
    uint8_t idx = 0;
    uint8_t byte;

    // '\n' 올 때까지 한 바이트씩 수신
    while (1) {
        if (HAL_UART_Receive(_huart, &byte, 1, 10) == HAL_OK) {
            if (byte == '\n') break;
            buf[idx++] = byte;
            if (idx >= 63) break;
        } else {
            return;  // 수신 실패시 리턴
        }
    }

    // "90,90,90,90,90,90" 파싱
    int a[6] = {0};
    int parsed = sscanf((char *)buf, "%d,%d,%d,%d,%d,%d",
                        &a[0], &a[1], &a[2], &a[3], &a[4], &a[5]);

    if (parsed == 6) {  // 6개 다 파싱됐을 때만 적용
        for (int i = 0; i < 6; i++) {
            angles[i] = (float)a[i];
        }
    }
}
