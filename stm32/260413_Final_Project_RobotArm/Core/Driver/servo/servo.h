/*
 * servo.h
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#ifndef DRIVER_SERVO_SERVO_H_
#define DRIVER_SERVO_SERVO_H_

#include "stm32f4xx_hal.h"

#define SERVO_MIN_CCR   500    // 0도
#define SERVO_MAX_CCR   2500   // 180도

typedef struct {
    TIM_HandleTypeDef *htim;
    uint32_t channel;
} Servo_t;

void Servo_Init(Servo_t *servo, TIM_HandleTypeDef *htim, uint32_t channel);
void Servo_SetAngle(Servo_t *servo, float angle);


#endif /* DRIVER_SERVO_SERVO_H_ */
