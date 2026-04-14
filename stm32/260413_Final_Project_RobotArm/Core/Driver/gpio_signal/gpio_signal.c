/*
 * gpio_signal.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#include "gpio_signal.h"

void GPIO_Signal_Init(void) {
    HAL_GPIO_WritePin(gpio_signal_GPIO_Port, gpio_signal_Pin, GPIO_PIN_RESET);
}

void GPIO_Signal_SendComplete(void) {
    HAL_GPIO_WritePin(gpio_signal_GPIO_Port, gpio_signal_Pin, GPIO_PIN_SET);
    HAL_Delay(100);
    HAL_GPIO_WritePin(gpio_signal_GPIO_Port, gpio_signal_Pin, GPIO_PIN_RESET);
}
