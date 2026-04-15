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

    // 중간값(1500)으로 시작 → 튀는 현상 줄임
    __HAL_TIM_SET_COMPARE(htim, channel, 1500);

    HAL_TIM_PWM_Start(htim, channel);
}

void Servo_SetAngle(Servo_t *servo, float angle) {
    if (angle < 0.0f)            angle = 0.0f;
    if (angle > SERVO_MAX_ANGLE) angle = SERVO_MAX_ANGLE;

    uint32_t ccr = (uint32_t)(SERVO_MIN_CCR +
                   (angle / SERVO_MAX_ANGLE) * (SERVO_MAX_CCR - SERVO_MIN_CCR));
    __HAL_TIM_SET_COMPARE(servo->htim, servo->channel, ccr);
}

void Servo_SetAngleSmooth(Servo_t *servo, float target_angle, uint32_t step_delay_ms) {
    uint32_t current_ccr = __HAL_TIM_GET_COMPARE(servo->htim, servo->channel);
    uint32_t target_ccr  = (uint32_t)(SERVO_MIN_CCR +
                           (target_angle / SERVO_MAX_ANGLE) * (SERVO_MAX_CCR - SERVO_MIN_CCR));

    if (current_ccr < target_ccr) {
        for (uint32_t ccr = current_ccr; ccr <= target_ccr; ccr += 3) {
            __HAL_TIM_SET_COMPARE(servo->htim, servo->channel, ccr);
            HAL_Delay(step_delay_ms);
        }
    } else {
        for (uint32_t ccr = current_ccr; ccr >= target_ccr + 3; ccr -= 3) {
            __HAL_TIM_SET_COMPARE(servo->htim, servo->channel, ccr);
            HAL_Delay(step_delay_ms);
        }
        __HAL_TIM_SET_COMPARE(servo->htim, servo->channel, target_ccr);
    }
}

void Servo_SoftStart(Servo_t *servo, float target_angle) {
    uint32_t current_ccr = __HAL_TIM_GET_COMPARE(servo->htim, servo->channel);
    float current_angle  = (float)(current_ccr - SERVO_MIN_CCR) /
                           (float)(SERVO_MAX_CCR - SERVO_MIN_CCR) * SERVO_MAX_ANGLE;

    float diff = target_angle - current_angle;
    int steps  = (int)(diff < 0 ? -diff : diff) * 4;
    if (steps < 1) steps = 1;

    for (int i = 0; i <= steps; i++) {
        float angle = current_angle + diff * i / steps;
        uint32_t ccr = (uint32_t)(SERVO_MIN_CCR +
                       (angle / SERVO_MAX_ANGLE) * (SERVO_MAX_CCR - SERVO_MIN_CCR));
        __HAL_TIM_SET_COMPARE(servo->htim, servo->channel, ccr);
        HAL_Delay(5);
    }
}
