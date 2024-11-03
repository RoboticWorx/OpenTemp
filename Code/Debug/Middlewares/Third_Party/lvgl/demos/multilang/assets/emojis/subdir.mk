################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.c \
../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.c 

OBJS += \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.o \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.o 

C_DEPS += \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.d \
./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/%.o Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/%.su Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/%.cyclo: ../Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/%.c Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F413xx -c -I../Core/Inc -I"C:/Users/Jatki/OneDrive/Documents/STM/OpenTemp/Middlewares/Third_Party/lvgl" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-multilang-2f-assets-2f-emojis

clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-multilang-2f-assets-2f-emojis:
	-$(RM) ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_artist_palette.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_books.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_camera_with_flash.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_cat_face.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_deciduous_tree.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_dog_face.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_earth_globe_europe_africa.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_flexed_biceps.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_movie_camera.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_red_heart.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_rocket.su ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.cyclo ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.d ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.o ./Middlewares/Third_Party/lvgl/demos/multilang/assets/emojis/img_emoji_soccer_ball.su

.PHONY: clean-Middlewares-2f-Third_Party-2f-lvgl-2f-demos-2f-multilang-2f-assets-2f-emojis

