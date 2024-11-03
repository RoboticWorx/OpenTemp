################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.c \
../Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.c \
../Middlewares/Third_Party/lepton_sdk/Src/crc16fast.c \
../Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.c 

OBJS += \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.o \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.o \
./Middlewares/Third_Party/lepton_sdk/Src/crc16fast.o \
./Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.o 

C_DEPS += \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.d \
./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.d \
./Middlewares/Third_Party/lepton_sdk/Src/crc16fast.d \
./Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lepton_sdk/Src/%.o Middlewares/Third_Party/lepton_sdk/Src/%.su Middlewares/Third_Party/lepton_sdk/Src/%.cyclo: ../Middlewares/Third_Party/lepton_sdk/Src/%.c Middlewares/Third_Party/lepton_sdk/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lepton_sdk/Inc" -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lepton_sdk/Src" -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lepton_sdk-2f-Src

clean-Middlewares-2f-Third_Party-2f-lepton_sdk-2f-Src:
	-$(RM) ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_AGC.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Protocol.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_I2C_Service.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_OEM.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_RAD.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SDK.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_SYS.su ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.d ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.o ./Middlewares/Third_Party/lepton_sdk/Src/LEPTON_VID.su ./Middlewares/Third_Party/lepton_sdk/Src/crc16fast.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/crc16fast.d ./Middlewares/Third_Party/lepton_sdk/Src/crc16fast.o ./Middlewares/Third_Party/lepton_sdk/Src/crc16fast.su ./Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.cyclo ./Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.d ./Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.o ./Middlewares/Third_Party/lepton_sdk/Src/stm32_i2c.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lepton_sdk-2f-Src

