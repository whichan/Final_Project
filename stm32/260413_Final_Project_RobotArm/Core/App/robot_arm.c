/*
 * robot_arm.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#include "robot_arm.h"
#include "servo.h"
#include "gpio_signal.h"
#include "uart_com.h"

static Servo_t servo[SERVO_COUNT];

// -----------------------------------------------
// 시퀀스 각도 정의 [단계][서보번호]
// 실제 로봇팔 캘리브레이션 후 수정 필요
// -----------------------------------------------
static const float sequence[SEQUENCE_STEPS][SERVO_COUNT] = {
    {90,  90,  90,  90,  90,  90},  // 0: 대기 자세
    {90,  45, 135,  90,  90,  90},  // 1: 배터리 위치 이동
    {90,  45, 135,  90,  90,  45},  // 2: 그리퍼 닫기 (집기)
    {90,  45, 135,  90,  90,  45},  // 3: 180도 회전
    {90,  45, 135,  90,  90,  90},  // 4: 그리퍼 열기 (놓기)
    {90,  90,  90,  90,  90,  90},  // 5: 대기 복귀
};

// 각 단계별 대기 시간 (ms)
static const uint32_t step_delay[SEQUENCE_STEPS] = {
    500, 800, 600, 1000, 600, 800
};

static void ExecuteStep(uint8_t step) {
    for (int i = 0; i < SERVO_COUNT; i++) {
        Servo_SetAngle(&servo[i], sequence[step][i]);
    }
    HAL_Delay(step_delay[step]);
}

void RobotArm_Init(TIM_HandleTypeDef *htim1, TIM_HandleTypeDef *htim2) {
    // 서보 초기화
    Servo_Init(&servo[0], htim2, TIM_CHANNEL_1); // PA8
    Servo_Init(&servo[1], htim2, TIM_CHANNEL_2); // PA9
    Servo_Init(&servo[2], htim2, TIM_CHANNEL_3); // PA10
    Servo_Init(&servo[3], htim2, TIM_CHANNEL_4); // PA11
    Servo_Init(&servo[4], htim4, TIM_CHANNEL_1); // PA0
    Servo_Init(&servo[5], htim4, TIM_CHANNEL_2); // PA1

    // 대기 자세로 초기화
    ExecuteStep(0);
}

void RobotArm_Run(void) {
    // 1. 상태 전송: moving
    UART_Com_SendStatus(ROBOT_STATUS_MOVING);

    // 2. 시퀀스 실행
    for (uint8_t step = 1; step < SEQUENCE_STEPS; step++) {
        ExecuteStep(step);
    }

    // 3. STM32-2로 완료 신호 (GPIO)
    GPIO_Signal_SendComplete();

    // 4. 상태 전송: done → idle
    UART_Com_SendStatus(ROBOT_STATUS_DONE);
    HAL_Delay(200);
    UART_Com_SendStatus(ROBOT_STATUS_IDLE);
}
