#include <stdio.h>

#include "stm32f4xx_hal.h"
#include "../../driver/DHT11/DHT11.h"
#include "../../driver/LCD/LCD.h"
#include "../../driver/UART_COM/uart_com.h"


void TempHumid_Excute();
void TempHumid_SendSensorData();
