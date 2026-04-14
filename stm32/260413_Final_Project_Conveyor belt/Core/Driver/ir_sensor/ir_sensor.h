#ifndef IR_SENSOR_H
#define IR_SENSOR_H

#include "common.h"

/**
 * @brief  IR 센서 감지 여부 반환
 * @retval 1 : 물체 감지됨
 * @retval 0 : 감지 없음
 */
uint8_t IR_Detected(void);

#endif /* IR_SENSOR_H */
