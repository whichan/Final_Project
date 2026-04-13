#include "ap_main.h"

int16_t g_z_accel = 0;
volatile uint8_t g_mpu_send_flag = 0;  // 전송 트리거 플래그
extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;

void ap_Init() {
	HAL_I2C_DeInit(&hi2c1);
	HAL_Delay(10);
	HAL_I2C_Init(&hi2c1);
	HAL_Delay(10);

	UART_COM_Init(&huart2);
    HAL_Delay(10);

	MPU6050_Init(&hi2c1);
	HAL_TIM_Base_Start_IT(&htim3);
}

void ap_exe() {
	if (g_mpu_send_flag) {
		g_mpu_send_flag = 0;

		static uint32_t last_send = 0;
		if (HAL_GetTick() - last_send < 100)
			return;
		last_send = HAL_GetTick();

		MPU6050_Read_AndUpdate_Z(&hi2c1, &g_z_accel);
		uint8_t payload[2];
		payload[0] = (uint8_t) ((g_z_accel >> 8) & 0xFF);
		payload[1] = (uint8_t) (g_z_accel & 0xFF);

//		UART_COM_SendPacket(CMD_SEND_MPU_DATA, payload, 2);
		// [방법 A] 두 곳 모두에 데이터 전송 (강력 추천: PC로 보면서 ILA 디버깅 가능)
		UART_COM_SendPacket(&huart2, 0x50, payload, 2); // PC 터미널 확인용
		UART_COM_SendPacket(&huart1, 0x50, payload, 2); // Basys3 ILA 확인용
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
