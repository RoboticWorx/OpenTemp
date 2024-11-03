################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.c \
../Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.c \
../Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.c \
../Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.c \
../Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.o \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.o \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.o \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.o \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.d \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.d \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.d \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.d \
./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/misc/cache/%.o Middlewares/Third_Party/lvgl/src/misc/cache/%.su Middlewares/Third_Party/lvgl/src/misc/cache/%.cyclo: ../Middlewares/Third_Party/lvgl/src/misc/cache/%.c Middlewares/Third_Party/lvgl/src/misc/cache/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-misc-2f-cache

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-misc-2f-cache:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.cyclo ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.d ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.o ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache.su ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.cyclo ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.d ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.o ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_entry.su ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.cyclo ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.d ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.o ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_cache_lru_rb.su ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.cyclo ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.d ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.o ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_cache.su ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.cyclo ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.d ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.o ./Middlewares/Third_Party/lvgl/src/misc/cache/lv_image_header_cache.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-misc-2f-cache

