################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.c \
../Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.c \
../Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.c \
../Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.c 

OBJS += \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.o \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.d \
./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/%.o Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/%.su Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/%.cyclo: ../Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/%.c Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-libs-2f-tiny_ttf

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-libs-2f-tiny_ttf:
	-$(RM) ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.cyclo ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.d ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.o ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_1.su ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.cyclo ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.d ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.o ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_2.su ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.cyclo ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.d ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.o ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/lv_example_tiny_ttf_3.su ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.cyclo ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.d ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.o ./Middlewares/Third_Party/lvgl/examples/libs/tiny_ttf/ubuntu_font.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-libs-2f-tiny_ttf

