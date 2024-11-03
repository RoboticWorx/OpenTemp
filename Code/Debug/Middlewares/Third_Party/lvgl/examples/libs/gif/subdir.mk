################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.c \
../Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.c 

OBJS += \
./Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.o \
./Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.d \
./Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/examples/libs/gif/%.o Middlewares/Third_Party/lvgl/examples/libs/gif/%.su Middlewares/Third_Party/lvgl/examples/libs/gif/%.cyclo: ../Middlewares/Third_Party/lvgl/examples/libs/gif/%.c Middlewares/Third_Party/lvgl/examples/libs/gif/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-libs-2f-gif

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-libs-2f-gif:
	-$(RM) ./Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.cyclo ./Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.d ./Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.o ./Middlewares/Third_Party/lvgl/examples/libs/gif/img_bulb_gif.su ./Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.cyclo ./Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.d ./Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.o ./Middlewares/Third_Party/lvgl/examples/libs/gif/lv_example_gif_1.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-libs-2f-gif

