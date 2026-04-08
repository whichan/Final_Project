################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/driver/UART_COM/uart_com.c \
../Core/driver/UART_COM/uart_protocol.c 

OBJS += \
./Core/driver/UART_COM/uart_com.o \
./Core/driver/UART_COM/uart_protocol.o 

C_DEPS += \
./Core/driver/UART_COM/uart_com.d \
./Core/driver/UART_COM/uart_protocol.d 


# Each subdirectory must supply rules for building sources it contributes
Core/driver/UART_COM/%.o Core/driver/UART_COM/%.su Core/driver/UART_COM/%.cyclo: ../Core/driver/UART_COM/%.c Core/driver/UART_COM/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F411xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-driver-2f-UART_COM

clean-Core-2f-driver-2f-UART_COM:
	-$(RM) ./Core/driver/UART_COM/uart_com.cyclo ./Core/driver/UART_COM/uart_com.d ./Core/driver/UART_COM/uart_com.o ./Core/driver/UART_COM/uart_com.su ./Core/driver/UART_COM/uart_protocol.cyclo ./Core/driver/UART_COM/uart_protocol.d ./Core/driver/UART_COM/uart_protocol.o ./Core/driver/UART_COM/uart_protocol.su

.PHONY: clean-Core-2f-driver-2f-UART_COM

