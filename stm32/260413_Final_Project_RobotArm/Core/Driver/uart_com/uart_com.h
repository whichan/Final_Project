/*
 * uart_com.h
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#ifndef DRIVER_UART_COM_UART_COM_H_
#define DRIVER_UART_COM_UART_COM_H_

#include "stm32f4xx_hal.h"

typedef enum {
    ROBOT_STATUS_IDLE    = 0,
    ROBOT_STATUS_MOVING  = 1,
    ROBOT_STATUS_DONE    = 2,
    ROBOT_STATUS_ERROR   = 3
} RobotStatus_t;

void UART_Com_Init(UART_HandleTypeDef *huart);
void UART_Com_SendStatus(RobotStatus_t status);


#endif /* DRIVER_UART_COM_UART_COM_H_ */
