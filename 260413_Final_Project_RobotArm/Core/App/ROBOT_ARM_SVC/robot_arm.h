/*
 * robot_arm.h
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#ifndef APP_ROBOT_ARM_H_
#define APP_ROBOT_ARM_H_

#include "stm32f4xx_hal.h"
#include "../Driver/servo/servo.h"

#define TEST_MODE  0  // 테스트할 때 1, 실제 운용할 때 0
#define TEST_SERVOS      {0, 1,2,3,4,5}
#define TEST_SERVO_COUNT  6


#define SERVO_COUNT     6
#define SEQUENCE_STEPS  8

void RobotArm_Init(TIM_HandleTypeDef *htim2, TIM_HandleTypeDef *htim3,
                   TIM_HandleTypeDef *htim4);
void RobotArm_Run(void);   // 전체 시퀀스 실행
void RobotArm_SetAngles(float *angles);

#endif /* APP_ROBOT_ARM_H_ */
