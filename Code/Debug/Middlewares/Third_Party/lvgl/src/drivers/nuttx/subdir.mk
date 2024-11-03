################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.c \
../Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d \
./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/drivers/nuttx/%.o Middlewares/Third_Party/lvgl/src/drivers/nuttx/%.su Middlewares/Third_Party/lvgl/src/drivers/nuttx/%.cyclo: ../Middlewares/Third_Party/lvgl/src/drivers/nuttx/%.c Middlewares/Third_Party/lvgl/src/drivers/nuttx/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-drivers-2f-nuttx

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-drivers-2f-nuttx:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_cache.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_entry.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_fbdev.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_image_cache.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_lcd.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_libuv.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_profiler.su ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.cyclo ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.d ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.o ./Middlewares/Third_Party/lvgl/src/drivers/nuttx/lv_nuttx_touchscreen.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-drivers-2f-nuttx

