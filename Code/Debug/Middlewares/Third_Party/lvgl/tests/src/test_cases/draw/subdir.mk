################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.c \
../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.c 

OBJS += \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.o \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.d \
./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/%.o Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/%.su Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/%.cyclo: ../Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/%.c Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-draw

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-draw:
	-$(RM) ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_clip_corner.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_blend.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_label.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_layer.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_sw_post_process.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_draw_vector.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_image_formats.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_layer_transform.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_al88.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_argb8888.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_i1.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_l8.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb565.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_rgb888.su ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.cyclo ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.d ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.o ./Middlewares/Third_Party/lvgl/tests/src/test_cases/draw/test_render_to_xrgb8888.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-tests-2f-src-2f-test_cases-2f-draw

