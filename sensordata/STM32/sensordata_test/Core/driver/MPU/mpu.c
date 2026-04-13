/*
 * mpu.c
 *
 *  Created on: Apr 7, 2026
 *      Author: kccistc
 */

#include "mpu.h"

extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;

void MPU6050_Init(I2C_HandleTypeDef *hi2c) {
    uint8_t check, data;

    // 1. Who Am I 확인 (로그 없이 내부적으로만 체크)
    if (HAL_I2C_Mem_Read(hi2c, MPU6050_ADDR, 0x75, 1, &check, 1, 100) != HAL_OK) {
        return; // 실패 시 조용히 복귀 (또는 LED 등으로 표시)
    }

    // 2. Sleep 해제 (성공/실패 로그 삭제)
    data = 0;
    HAL_I2C_Mem_Write(hi2c, MPU6050_ADDR, REG_PWR_MGMT_1, 1, &data, 1, 100);

    HAL_Delay(100); // 센서 안정화 대기
}

void MPU6050_Read_And_Send_Z(I2C_HandleTypeDef *hi2c) {
    uint8_t raw_data[2];
    int16_t z_accel;

    // 1. Z축 데이터(High, Low) 2바이트 읽기
    if (HAL_I2C_Mem_Read(hi2c, MPU6050_ADDR, REG_ACCEL_ZOUT_H, 1, raw_data, 2, 10) == HAL_OK) {
        // 2. 8비트 데이터 2개를 16비트로 합치기
        z_accel = (int16_t)((raw_data[0] << 8) | raw_data[1]);

        // 3. 기존 UART_COM 구조를 활용해 Basys3로 전송 (CMD_SEND_MPU_DATA = 0x50)
        uint8_t payload[2];
        payload[0] = (uint8_t)((z_accel >> 8) & 0xFF);
        payload[1] = (uint8_t)(z_accel & 0xFF);

        // Non-blocking DMA 전송 권장
        UART_COM_SendPacket(&huart1, 0x50, payload, 2);
        UART_COM_SendPacket(&huart2, 0x50, payload, 2);
    }
}

void MPU6050_Read_AndUpdate_Z(I2C_HandleTypeDef *hi2c, int16_t *out_z) {
    uint8_t raw_data[2];
    if (HAL_I2C_Mem_Read(hi2c, MPU6050_ADDR, REG_ACCEL_ZOUT_H,
                         1, raw_data, 2, 10) == HAL_OK) {
        *out_z = (int16_t)((raw_data[0] << 8) | raw_data[1]);
        // 전송은 호출부(ap_exe)에서 담당 — 이 함수는 읽기만
    }
}
