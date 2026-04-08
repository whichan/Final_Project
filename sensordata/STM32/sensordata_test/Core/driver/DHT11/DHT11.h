#ifndef DRIVER_DHT11_DHT11_H_
#define DRIVER_DHT11_DHT11_H_

#include "stm32f4xx_hal.h"
#include "../Delay/Delay.h"

#define DHT11_GPIO GPIOC
#define DHT11_GPIO_PIN GPIO_PIN_4
#define DHT11_GPIO_CLK_EN() __HAL_RCC_GPIOC_CLK_ENABLE()

typedef enum {
	DHT11_OK = 0, DHT11_ERROR_TIMEOUT, DHT11_ERROR_CHECKSUM
} DHT11_Status_t;

typedef struct {
	//습도 정수부
	uint8_t humi_int;
	//습도 소수부
	uint8_t humi_dec;
	//온도 정수부
	uint8_t temp_int;
	//온도 소수부
	uint8_t temp_dec;
} DHT11_Data_t;

void DHT11_Init();
void DHT11_SetOutput();
void DHT11_SetInput();
uint8_t DHT11_ReadPin();
void DHT11_LowPin();
void DHT11_HighPin();
DHT11_Status_t DHT11_Read(DHT11_Data_t *data);

#endif /* DRIVER_DHT11_DHT11_H_ */
