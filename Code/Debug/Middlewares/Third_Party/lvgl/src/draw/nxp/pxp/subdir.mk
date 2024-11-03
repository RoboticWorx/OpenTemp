################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.c \
../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.c 

OBJS += \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d \
./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/%.o Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/%.su Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/%.cyclo: ../Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/%.c Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp:
	-$(RM) ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_buf_pxp.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_fill.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_img.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_draw_pxp_layer.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_cfg.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_osa.su ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.cyclo ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.d ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.o ./Middlewares/Third_Party/lvgl/src/draw/nxp/pxp/lv_pxp_utils.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-src-2f-draw-2f-nxp-2f-pxp

