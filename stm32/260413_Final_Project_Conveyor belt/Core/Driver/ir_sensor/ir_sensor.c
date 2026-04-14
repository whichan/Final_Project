#include "ir_sensor.h"

uint8_t IR_Detected(void)
{
    return (HAL_GPIO_ReadPin(IR_SENSOR_GPIO_Port, IR_SENSOR_Pin) == SENSOR_ACTIVE_LEVEL)
           ? 1U : 0U;
}
