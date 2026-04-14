#ifndef MOTOR_H
#define MOTOR_H

#include "common.h"

/**
 * @brief  모터를 전진 방향으로 구동
 * @param  duty  PWM 듀티 (0 ~ MOTOR_PWM_MAX)
 */
void Motor_Forward(uint16_t duty);

/**
 * @brief  모터 정지 (IN1=0, IN2=0, PWM=0)
 */
void Motor_Stop(void);

#endif /* MOTOR_H */
