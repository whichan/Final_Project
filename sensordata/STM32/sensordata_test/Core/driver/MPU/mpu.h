/*
 * mpu.h
 *
 *  Created on: Apr 7, 2026
 *      Author: kccistc
 */

#ifndef DRIVER_MPU_MPU_H_
#define DRIVER_MPU_MPU_H_
#include "stm32f4xx_hal.h"
#include "../UART_COM/uart_com.h"
#include <stdio.h>
#include <string.h>

#define MPU6050_ADDR         (0x68 << 1) // I2C 주소 (AD0가 GND일 때)
#define REG_PWR_MGMT_1       0x6B
#define REG_ACCEL_ZOUT_H     0x3F        // Z축 가속도 데이터 시작 주소



void MPU6050_Init(I2C_HandleTypeDef *hi2c);
void MPU6050_Read_And_Send_Z(I2C_HandleTypeDef *hi2c);
void MPU6050_Read_AndUpdate_Z(I2C_HandleTypeDef *hi2c, int16_t *out_z);


#endif /* DRIVER_MPU_MPU_H_ */
