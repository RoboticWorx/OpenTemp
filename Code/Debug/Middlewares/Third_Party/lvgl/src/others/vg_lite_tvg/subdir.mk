################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/%.o Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/%.su Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/%.cyclo: ../Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/%.c Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-others-2f-vg_lite_tvg

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-others-2f-vg_lite_tvg:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.cyclo ./Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.d ./Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.o ./Middlewares/Third_Party/lvgl/src/others/vg_lite_tvg/vg_lite_matrix.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-others-2f-vg_lite_tvg

