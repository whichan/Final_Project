#include "app_main.h"
#include "../Driver/Motor/motor.h"
#include "../Driver/ir_sensor/ir_sensor.h"
#include "../Driver/uart_com/uart_com.h"
#include <stdio.h>

extern TIM_HandleTypeDef htim3;

#define APP_LOOP_DELAY_MS  300U

static char s_msg[16];

/* ------------------------------------------------------------------ */
/*  Public functions                                                    */
/* ------------------------------------------------------------------ */

void App_Init(void)
{
    HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);
    Motor_Stop();
}

void App_Run(void)
{
    if (IR_Detected())
    {
        Motor_Stop();
        snprintf(s_msg, sizeof(s_msg), "1\r\n");
    }
    else
    {
        Motor_Forward(MOTOR_PWM_FULL_DUTY);
        snprintf(s_msg, sizeof(s_msg), "0\r\n");
    }

    UART_Print(s_msg);
    HAL_Delay(APP_LOOP_DELAY_MS);
}
