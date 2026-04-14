#ifndef COMMON_H
#define COMMON_H

#include "main.h"
#include <stdint.h>

/* PWM 설정 */
#define MOTOR_PWM_MAX        999U
#define MOTOR_PWM_FULL_DUTY  999U

/* IR 센서 활성 레벨 */
#define SENSOR_ACTIVE_LEVEL  GPIO_PIN_SET

#endif /* COMMON_H */
