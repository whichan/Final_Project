#include <stdio.h>

#include "stm32f4xx_hal.h"
//#include "FAN_SVC/fan_svc.h"
#include "../driver/MPU/mpu.h"

#include "../driver/DHT11/DHT11.h"
#include "../driver/LCD/LCD.h"
#include "../driver/UART_COM/uart_com.h"

extern RTC_HandleTypeDef hrtc;
extern I2C_HandleTypeDef hi2c1;
extern TIM_HandleTypeDef htim3;
extern DMA_HandleTypeDef hdma_usart2_rx;
extern UART_HandleTypeDef huart2;

void ap_Init();
void ap_exe();
void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size);
