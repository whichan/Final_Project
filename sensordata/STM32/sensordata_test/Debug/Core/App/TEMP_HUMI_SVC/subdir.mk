################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/App/TEMP_HUMI_SVC/temp_humi_svc.c 

OBJS += \
./Core/App/TEMP_HUMI_SVC/temp_humi_svc.o 

C_DEPS += \
./Core/App/TEMP_HUMI_SVC/temp_humi_svc.d 


# Each subdirectory must supply rules for building sources it contributes
Core/App/TEMP_HUMI_SVC/%.o Core/App/TEMP_HUMI_SVC/%.su Core/App/TEMP_HUMI_SVC/%.cyclo: ../Core/App/TEMP_HUMI_SVC/%.c Core/App/TEMP_HUMI_SVC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-App-2f-TEMP_HUMI_SVC

clean-Core-2f-App-2f-TEMP_HUMI_SVC:
	-$(RM) ./Core/App/TEMP_HUMI_SVC/temp_humi_svc.cyclo ./Core/App/TEMP_HUMI_SVC/temp_humi_svc.d ./Core/App/TEMP_HUMI_SVC/temp_humi_svc.o ./Core/App/TEMP_HUMI_SVC/temp_humi_svc.su

.PHONY: clean-Core-2f-App-2f-TEMP_HUMI_SVC

