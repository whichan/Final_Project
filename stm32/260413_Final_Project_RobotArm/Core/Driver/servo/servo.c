/*
 * servo.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */


#include "servo.h"

void Servo_Init(Servo_t *servo, TIM_HandleTypeDef *htim, uint32_t channel) {
    servo->htim    = htim;
    servo->channel = channel;
    HAL_TIM_PWM_Start(htim, channel);
}

void Servo_SetAngle(Servo_t *servo, float angle) {
    if (angle < 0.0f)   angle = 0.0f;
    if (angle > 180.0f) angle = 180.0f;

    uint32_t ccr = (uint32_t)(SERVO_MIN_CCR +
                   (angle / 180.0f) * (SERVO_MAX_CCR - SERVO_MIN_CCR));
    __HAL_TIM_SET_COMPARE(servo->htim, servo->channel, ccr);
}
