/*
 * ir_sensor.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */


#include "ir_sensor.h"

volatile uint8_t ir_detected = 0;

void IR_Sensor_Init(void) {
    // CubeMX에서 GPIO EXTI 설정 완료된 상태
    // 추가 초기화 불필요
}

uint8_t IR_Sensor_IsDetected(void) {
    return ir_detected;
}

void IR_Sensor_ClearFlag(void) {
    ir_detected = 0;
}

// EXTI 인터럽트 콜백 (main.c 또는 stm32f4xx_it.c에 있는 콜백 대체)
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin) {
    if (GPIO_Pin == GPIO_PIN_5) {   // PA5: 적외선 센서
        ir_detected = 1;
    }
}
