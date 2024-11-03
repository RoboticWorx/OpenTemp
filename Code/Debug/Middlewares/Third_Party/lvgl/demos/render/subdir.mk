################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.c 

OBJS += \
./Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/demos/render/%.o Middlewares/Third_Party/lvgl/demos/render/%.su Middlewares/Third_Party/lvgl/demos/render/%.cyclo: ../Middlewares/Third_Party/lvgl/demos/render/%.c Middlewares/Third_Party/lvgl/demos/render/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-render

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-render:
	-$(RM) ./Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.cyclo ./Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.d ./Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.o ./Middlewares/Third_Party/lvgl/demos/render/lv_demo_render.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-render

