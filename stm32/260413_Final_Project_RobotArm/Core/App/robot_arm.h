/*
 * robot_arm.h
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#ifndef APP_ROBOT_ARM_H_
#define APP_ROBOT_ARM_H_

#include "stm32f4xx_hal.h"
#include "servo.h"

#define SERVO_COUNT     6
#define SEQUENCE_STEPS  6

void RobotArm_Init(TIM_HandleTypeDef *htim1, TIM_HandleTypeDef *htim2);
void RobotArm_Run(void);   // 전체 시퀀스 실행


#endif /* APP_ROBOT_ARM_H_ */
