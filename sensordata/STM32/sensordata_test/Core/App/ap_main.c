#include "ap_main.h"

int16_t g_z_accel = 0;
volatile uint8_t g_mpu_send_flag = 0;  // 전송 트리거 플래그

void ap_Init() {
	HAL_I2C_DeInit(&hi2c1);
	HAL_Delay(10);
	HAL_I2C_Init(&hi2c1);
	HAL_Delay(10);

	UART_COM_Init(&huart2);
	MPU6050_Init(&hi2c1);
	HAL_TIM_Base_Start_IT(&htim3);
}

void ap_exe() {
	if (g_mpu_send_flag) {
		g_mpu_send_flag = 0;

		static uint32_t last_send = 0;
		if (HAL_GetTick() - last_send < 5)
			return; // 50ms = 20Hz로 제한
		last_send = HAL_GetTick();

		MPU6050_Read_AndUpdate_Z(&hi2c1, &g_z_accel);
		uint8_t payload[2];
		payload[0] = (uint8_t) ((g_z_accel >> 8) & 0xFF);
		payload[1] = (uint8_t) (g_z_accel & 0xFF);
		UART_COM_SendPacket(CMD_SEND_MPU_DATA, payload, 2);
	}
}

void HAL_UARTEx_RxEventCallback(UART_HandleTypeDef *huart, uint16_t Size) {
	if (huart->Instance == USART2) {
		UART_COM_RxEventHandler(Size);
	}
}

// 타이머 인터럽트가 발생할 때마다 실행됨
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim) {
	if (htim->Instance == TIM3) {
		// 인터럽트에서는 플래그만 세팅
		g_mpu_send_flag = 1;
	}
}
