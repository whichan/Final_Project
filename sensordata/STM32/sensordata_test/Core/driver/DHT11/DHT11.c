#include "DHT11.h"

void DHT11_Init() {
	DHT11_GPIO_CLK_EN();
	DWT_Init();
	DHT11_SetOutput();
	HAL_GPIO_WritePin(DHT11_GPIO, DHT11_GPIO_PIN, SET);
	HAL_Delay(1000);
}

void DHT11_SetOutput() {
	GPIO_InitTypeDef GPIO_InitStruct = { 0 };
	GPIO_InitStruct.Pin = DHT11_GPIO_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
	HAL_GPIO_Init(DHT11_GPIO, &GPIO_InitStruct);
}

void DHT11_SetInput() {
	GPIO_InitTypeDef GPIO_InitStruct = { 0 };
	GPIO_InitStruct.Pin = DHT11_GPIO_PIN;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(DHT11_GPIO, &GPIO_InitStruct);
}

uint8_t DHT11_ReadPin() {
	return HAL_GPIO_ReadPin(DHT11_GPIO, DHT11_GPIO_PIN);
}

void DHT11_LowPin() {
	HAL_GPIO_WritePin(DHT11_GPIO, DHT11_GPIO_PIN, RESET);
}

void DHT11_HighPin() {
	HAL_GPIO_WritePin(DHT11_GPIO, DHT11_GPIO_PIN, SET);
}

DHT11_Status_t DHT11_Read(DHT11_Data_t *data) {
	uint8_t rawData[5] = { 0 };
	uint32_t timeout;

	// 1. Start Signal out
	DHT11_SetOutput();
	DHT11_LowPin();
	HAL_Delay(18);
	DHT11_HighPin();
	delay_us(30);

	// 2. Response input
	DHT11_SetInput();

	timeout = 100;	//usec
	while (DHT11_ReadPin() == 1) {	// wait low response signal
		delay_us(1);
		if (--timeout == 0)
			return DHT11_ERROR_TIMEOUT;
	}

	timeout = 100;
	while (DHT11_ReadPin() == 0) {	// wait high response signal
		delay_us(1);
		if (--timeout == 0)
			return DHT11_ERROR_TIMEOUT;
	}

	timeout = 100;
	while (DHT11_ReadPin() == 1) {	// wait low signal, end response signal
		delay_us(1);
		if (--timeout == 0)
			return DHT11_ERROR_TIMEOUT;
	}

	// 3. Receive 40bit data
	for (int i = 0; i < 40; i++) {
		timeout = 100;
		while (DHT11_ReadPin() == 0) {	// wait high signal
			delay_us(1);
			if (--timeout == 0)
				return DHT11_ERROR_TIMEOUT;
		}

		delay_us(40);
		rawData[i / 8] <<= 1;	// LSB = 0,
		if (DHT11_ReadPin() == 1) {
			rawData[i / 8] |= 0x01;
		}

		timeout = 100;
		while (DHT11_ReadPin() == 1) {	// wait low signal
			delay_us(1);
			if (--timeout == 0)
				return DHT11_ERROR_TIMEOUT;
		}
	}
	// 4. Compare checksum
	uint8_t checksum = (uint8_t) (rawData[0] + rawData[1] + rawData[2]
			+ rawData[3]);
	if (checksum != rawData[4])
		return DHT11_ERROR_CHECKSUM;
	// 5. Save data
	data->humi_int = rawData[0];
	data->humi_dec = rawData[1];
	data->temp_int = rawData[2];
	data->temp_dec = rawData[3];

	return DHT11_OK;
}

