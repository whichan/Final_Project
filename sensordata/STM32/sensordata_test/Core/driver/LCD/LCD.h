/*
 * LCD.h
 *
 *  Created on: Mar 24, 2026
 *      Author: kccistc
 */

#ifndef DRIVER_LCD_LCD_H_
#define DRIVER_LCD_LCD_H_
#include <stdint.h>
#include "stm32f4xx_hal.h"

void LCD_Init(I2C_HandleTypeDef *hI2C);
void LCD_sendI2C(uint8_t data);
void LCD_backLight_On();
void LCD_backLight_Off();
void LCD_cmdMode();
void LCD_charMode();
void LCD_writeMode();
void LCD_E_High();
void LCD_E_Low();
void LCD_sendNibbleData(uint8_t data);
void LCD_sendData(uint8_t data);
void LCD_writeCmdData(uint8_t data);
void LCD_writeCharData(uint8_t data);
void LCD_writeString(char *str);
void LCD_gotoXY(uint8_t row, uint8_t col);
void LCD_writeStringXY(uint8_t row, uint8_t col, char *str);
void LCD_Clear();

#endif /* DRIVER_LCD_LCD_H_ */
