/*
 * robot_arm.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */

#include "robot_arm.h"
#include "../../Driver/servo/servo.h"
#include "../../Driver/gpio_signal/gpio_signal.h"
#include "../../Driver/uart_com/uart_com.h"

static Servo_t servo[SERVO_COUNT];

// -----------------------------------------------
// 시퀀스 각도 정의 [단계][서보번호]
// 실제 로봇팔 캘리브레이션 후 수정 필요
// -----------------------------------------------
static const float sequence[SEQUENCE_STEPS][SERVO_COUNT] = {
//  1번   2번   3번   4번   5번   6번
    {45,  45,   45,   45,   45,   45},  // 0: 대기
    {45,  20,   20,   45,   45,   45},  // 1: 고개 숙이기
    {45,  20,   20,   45,   45,   20},  // 2: 그리퍼 닫기
    {45,  45,   45,   45,   45,   20},  // 3: 살짝 들기
    {0,   45,   45,   45,   45,   20},  // 4: 회전
    {0,   20,   20,   45,   45,   20},  // 5: 고개 숙이기
    {0,   20,   20,   45,   45,   45},  // 6: 그리퍼 열기
    {45,  45,   45,   45,   45,   45},  // 7: 대기 복귀
};

// 각 단계별 대기 시간 (ms)
static const uint32_t step_delay[SEQUENCE_STEPS] = {
    500, 800, 600, 800, 1000, 800, 600, 800
};

static void ExecuteStep(uint8_t step) {
    for (int i = 0; i < SERVO_COUNT; i++) {
        Servo_SetAngleSmooth(&servo[i], sequence[step][i], 6);
    }
    HAL_Delay(step_delay[step]);
}

void RobotArm_Init(TIM_HandleTypeDef *htim2, TIM_HandleTypeDef *htim3,
                   TIM_HandleTypeDef *htim4) {
    Servo_Init(&servo[0], htim2, TIM_CHANNEL_1);
    Servo_Init(&servo[1], htim2, TIM_CHANNEL_2);
    Servo_Init(&servo[2], htim3, TIM_CHANNEL_1);
    Servo_Init(&servo[3], htim3, TIM_CHANNEL_2);
    Servo_Init(&servo[4], htim4, TIM_CHANNEL_1);
    Servo_Init(&servo[5], htim4, TIM_CHANNEL_2);

#if TEST_MODE
    int test_list[] = TEST_SERVOS;

    // 테스트 서보만 소프트 스타트
    for (int i = 0; i < TEST_SERVO_COUNT; i++) {
        Servo_SoftStart(&servo[test_list[i]], 90.0f);
        HAL_Delay(200);
    }
    HAL_Delay(1000);

    while(1) {
        // 90 → 70도 천천히
        for (float a = 90.0f; a >= 70.0f; a -= 0.5f) {
            for (int i = 0; i < TEST_SERVO_COUNT; i++)
                Servo_SetAngle(&servo[test_list[i]], a);
            HAL_Delay(20);
        }
        HAL_Delay(500);

        // 70 → 90도 천천히
        for (float a = 70.0f; a <= 90.0f; a += 0.5f) {
            for (int i = 0; i < TEST_SERVO_COUNT; i++)
                Servo_SetAngle(&servo[test_list[i]], a);
            HAL_Delay(20);
        }
        HAL_Delay(500);

        // 90 → 110도 천천히  ← 90에서 출발
        for (float a = 90.0f; a <= 110.0f; a += 0.5f) {
            for (int i = 0; i < TEST_SERVO_COUNT; i++)
                Servo_SetAngle(&servo[test_list[i]], a);
            HAL_Delay(20);
        }
        HAL_Delay(500);

        // 110 → 90도 천천히
        for (float a = 110.0f; a >= 90.0f; a -= 0.5f) {
            for (int i = 0; i < TEST_SERVO_COUNT; i++)
                Servo_SetAngle(&servo[test_list[i]], a);
            HAL_Delay(20);
        }
        HAL_Delay(500);
    }
#else
    for (int i = 0; i < SERVO_COUNT; i++) {
        Servo_SoftStart(&servo[i], 90.0f);
        HAL_Delay(200);
    }
#endif
}

void RobotArm_SetAngles(float *angles) {
    for (int i = 0; i < SERVO_COUNT; i++) {
        float a = angles[i];
        if (a > 180.0f) a = 180.0f;
        Servo_SetAngleSmooth(&servo[i], a, 10);
    }
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
