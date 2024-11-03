################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.c \
../Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.c \
../Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.c \
../Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.c \
../Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.c 

OBJS += \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.o \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.o \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.o \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.o \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.d \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.d \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.d \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.d \
./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/examples/event/%.o Middlewares/Third_Party/lvgl/examples/event/%.su Middlewares/Third_Party/lvgl/examples/event/%.cyclo: ../Middlewares/Third_Party/lvgl/examples/event/%.c Middlewares/Third_Party/lvgl/examples/event/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-event

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-event:
	-$(RM) ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.cyclo ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.d ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.o ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_bubble.su ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.cyclo ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.d ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.o ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_button.su ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.cyclo ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.d ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.o ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_click.su ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.cyclo ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.d ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.o ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_draw.su ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.cyclo ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.d ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.o ./Middlewares/Third_Party/lvgl/examples/event/lv_example_event_streak.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-event

