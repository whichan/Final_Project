/*
 * ap_main.c
 *
 *  Created on: Apr 13, 2026
 *      Author: kccistc
 */


#include "ap_main.h"
#include "ROBOT_ARM_SVC/robot_arm.h"
#include "../Driver/ir_sensor/ir_sensor.h"
#include "../Driver/gpio_signal/gpio_signal.h"
#include "../Driver/uart_com/uart_com.h"

void App_Init(TIM_HandleTypeDef *htim2, TIM_HandleTypeDef *htim3,
              TIM_HandleTypeDef *htim4, UART_HandleTypeDef *huart2) {
    IR_Sensor_Init();
    GPIO_Signal_Init();
    UART_Com_Init(huart2);
    RobotArm_Init(htim2, htim3, htim4);
    UART_Com_SendStatus(ROBOT_STATUS_IDLE);
}

//void App_Run(void) {
//    if (IR_Sensor_IsDetected()) {
//        IR_Sensor_ClearFlag();
//        HAL_Delay(200);  // 디바운스
//        RobotArm_Run();
//    }
//}

void App_Run(void) {
    float angles[6] = {-1, -1, -1, -1, -1, -1};

    UART_Com_ReceiveAngles(angles);
    if (angles[0] >= 0) {
        RobotArm_SetAngles(angles);
    }
}
