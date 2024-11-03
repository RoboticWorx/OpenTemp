################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.c 

OBJS += \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/%.o Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/%.su Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/%.cyclo: ../Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/%.c Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs:
	-$(RM) ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_barcode.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bin_decoder.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_bmp.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_font_stress.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_freetype.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libjpeg_turbo.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_libpng.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_lodepng.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_memmove.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_qrcode.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tiny_ttf.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/libs/test_tjpgd.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-libs

