################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.c \
../Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.c \
../Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.o \
./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.o \
./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.d \
./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.d \
./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/others/font_manager/%.o Middlewares/Third_Party/lvgl/src/others/font_manager/%.su Middlewares/Third_Party/lvgl/src/others/font_manager/%.cyclo: ../Middlewares/Third_Party/lvgl/src/others/font_manager/%.c Middlewares/Third_Party/lvgl/src/others/font_manager/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-others-2f-font_manager

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-others-2f-font_manager:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.cyclo ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.d ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.o ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager.su ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.cyclo ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.d ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.o ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_recycle.su ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.cyclo ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.d ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.o ./Middlewares/Third_Party/lvgl/src/others/font_manager/lv_font_manager_utils.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-others-2f-font_manager

