################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.c \
../Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.c \
../Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.c 

OBJS += \
./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.o \
./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.o \
./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.d \
./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.d \
./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/examples/widgets/lottie/%.o Middlewares/Third_Party/lvgl/examples/widgets/lottie/%.su Middlewares/Third_Party/lvgl/examples/widgets/lottie/%.cyclo: ../Middlewares/Third_Party/lvgl/examples/widgets/lottie/%.c Middlewares/Third_Party/lvgl/examples/widgets/lottie/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-widgets-2f-lottie

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-widgets-2f-lottie:
	-$(RM) ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.cyclo ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.d ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.o ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_1.su ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.cyclo ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.d ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.o ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_2.su ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.cyclo ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.d ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.o ./Middlewares/Third_Party/lvgl/examples/widgets/lottie/lv_example_lottie_approve.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-examples-2f-widgets-2f-lottie

