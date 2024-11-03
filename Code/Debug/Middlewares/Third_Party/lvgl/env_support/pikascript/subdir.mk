################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.c \
../Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.c 

OBJS += \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.o \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.d \
./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/env_support/pikascript/%.o Middlewares/Third_Party/lvgl/env_support/pikascript/%.su Middlewares/Third_Party/lvgl/env_support/pikascript/%.cyclo: ../Middlewares/Third_Party/lvgl/env_support/pikascript/%.c Middlewares/Third_Party/lvgl/env_support/pikascript/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-env_support-2f-pikascript

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-env_support-2f-pikascript:
	-$(RM) ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_point_t.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_timer_t.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lv_wegit.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_indev_t.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_event.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_obj.su ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.cyclo ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.d ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.o ./Middlewares/Third_Party/lvgl/env_support/pikascript/pika_lvgl_lv_style_t.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-env_support-2f-pikascript

