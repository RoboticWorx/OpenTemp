/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "lvgl.h"
#include "./src/drivers/display/st7789/lv_st7789.h"
#include "stdio.h"
#include "MLX90640_API.h"
#include "MLX90640_I2C_Driver.h"
#include "Math.h"
#include <string.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define LCD_H_RES 170
#define LCD_W_RES 320

#define MLX_H_RES 168
#define MLX_W_RES 224

#define BUS_SPI1_POLL_TIMEOUT 0x1000U

#define TA_SHIFT 8
#define MLX90640_ADDR 0x33 // Default I2C address of MLX90640
#define MLX90640_REFRESH_RATE 0x02 // 0x02 is 2Hz
//#define MLX90640_RESOLUTION_19 0x03 // 19 bit resolution

// For a 10x10 canvas, with 2 bytes per pixel (assuming RGB565 format)
#define MLX_WIDTH 32
#define MLX_HEIGHT 24
#define BYTES_PER_PIXEL 2  // Assuming 16-bit color (RGB565)MAX_TEMP

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;

I2C_HandleTypeDef hi2c1;
DMA_HandleTypeDef hdma_i2c1_tx;
DMA_HandleTypeDef hdma_i2c1_rx;

SPI_HandleTypeDef hspi1;
DMA_HandleTypeDef hdma_spi1_tx;

osThreadId defaultTaskHandle;
/* USER CODE BEGIN PV */
osThreadId LvglTaskHandle;
osThreadId MLXTaskHandle;
osThreadId ADCTaskHandle;

lv_display_t *lcd_disp;
volatile int lcd_bus_busy = 0;

// Buffer to store frame data

float emissivity = 0.95;
float tr;
static uint16_t eeMLX90640[832];
static uint16_t mlx90640Frame[834];
paramsMLX90640 mlx90640;
static float mlx90640To[768];
int status;

float T_max, T_min;

float batteryVoltage;

uint8_t thermal_data_arr[MLX_H_RES * MLX_W_RES * 2];  // For 240x320 with 2 bytes per pixel (RGB565)

// Image descriptor
static lv_img_dsc_t therm_img_dsc = {
    .header.w = MLX_W_RES,   // Updated to 240 (width)
    .header.h = MLX_H_RES,   // Updated to 320 (height)
    .data_size = MLX_H_RES * MLX_W_RES * 2,  // 240 * 320 * 2
    .header.cf = LV_COLOR_FORMAT_NATIVE,    // RGB565 format
    .data = thermal_data_arr,
};
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_SPI1_Init(void);
static void MX_I2C1_Init(void);
static void MX_ADC1_Init(void);
void StartDefaultTask(void const * argument);

/* USER CODE BEGIN PFP */
void ui_init(lv_display_t *disp);
void LVGL_Task(void const *argument);
void MLX90640_Task(void const *argument);
void ADC_Task(void const * argument);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

int _write(int file, char *ptr, int len) // enable printf() debugging
{
  (void)file;
  int DataIdx;

  for (DataIdx = 0; DataIdx < len; DataIdx++)
  {
    //__io_putchar(*ptr++);
	  ITM_SendChar(*ptr++);
  }
  return len;
}


/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_SPI1_Init();
  MX_I2C1_Init();
  MX_ADC1_Init();
  /* USER CODE BEGIN 2 */

  // Turn all lasers on
  HAL_GPIO_WritePin(GPIOC, LAS1_Pin, GPIO_PIN_SET); // ON
  HAL_GPIO_WritePin(GPIOC, LAS2_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(GPIOC, LAS3_Pin, GPIO_PIN_SET);
  //HAL_GPIO_WritePin(GPIOC, LAS1_Pin, GPIO_PIN_RESET); // OFF

  /* USER CODE END 2 */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of defaultTask */
  osThreadDef(defaultTask, StartDefaultTask, osPriorityNormal, 0, 128);
  defaultTaskHandle = osThreadCreate(osThread(defaultTask), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  osThreadDef(LvglTask, LVGL_Task, osPriorityNormal, 0, 1024);
  LvglTaskHandle = osThreadCreate(osThread(LvglTask), NULL);

  osThreadDef(MLXTask, MLX90640_Task, osPriorityNormal, 0, 2048);
  MLXTaskHandle = osThreadCreate(osThread(MLXTask), NULL);

  osThreadDef(ADCTask, ADC_Task, osPriorityNormal, 0, 256);
  ADCTaskHandle = osThreadCreate(osThread(ADCTask), NULL);
  /* USER CODE END RTOS_THREADS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 4;
  RCC_OscInitStruct.PLL.PLLN = 100;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 3;
  RCC_OscInitStruct.PLL.PLLR = 2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_3) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */

  /** Configure the global features of the ADC (Clock, Resolution, Data Alignment and number of conversion)
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV4;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DMAContinuousRequests = DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Configure for the selected ADC regular channel its corresponding rank in the sequencer and its sample time.
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = 1;
  sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief I2C1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_I2C1_Init(void)
{

  /* USER CODE BEGIN I2C1_Init 0 */

  /* USER CODE END I2C1_Init 0 */

  /* USER CODE BEGIN I2C1_Init 1 */

  /* USER CODE END I2C1_Init 1 */
  hi2c1.Instance = I2C1;
  hi2c1.Init.ClockSpeed = 100000;
  hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
  hi2c1.Init.OwnAddress1 = 0;
  hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
  hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
  hi2c1.Init.OwnAddress2 = 0;
  hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
  hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
  if (HAL_I2C_Init(&hi2c1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN I2C1_Init 2 */

  /* USER CODE END I2C1_Init 2 */

}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 10;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA2_CLK_ENABLE();
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Stream0_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream0_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream0_IRQn);
  /* DMA1_Stream1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Stream1_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA1_Stream1_IRQn);
  /* DMA2_Stream2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA2_Stream2_IRQn, 5, 0);
  HAL_NVIC_EnableIRQ(DMA2_Stream2_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, BLINK_Pin|LAS1_Pin|LAS2_Pin|LAS3_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, LCD_BL_Pin|LCD_RESET_Pin|LCD_DCX_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15, GPIO_PIN_RESET);

  /*Configure GPIO pins : BLINK_Pin LAS1_Pin LAS2_Pin LAS3_Pin */
  GPIO_InitStruct.Pin = BLINK_Pin|LAS1_Pin|LAS2_Pin|LAS3_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pin : LCD_BL_Pin */
  GPIO_InitStruct.Pin = LCD_BL_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LCD_BL_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LCD_RESET_Pin */
  GPIO_InitStruct.Pin = LCD_RESET_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LCD_RESET_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : LCD_DCX_Pin LCD_CS_Pin */
  GPIO_InitStruct.Pin = LCD_DCX_Pin|LCD_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : CHG_Pin */
  GPIO_InitStruct.Pin = CHG_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_PULLUP;
  HAL_GPIO_Init(CHG_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : PB12 PB13 PB14 PB15 */
  GPIO_InitStruct.Pin = GPIO_PIN_12|GPIO_PIN_13|GPIO_PIN_14|GPIO_PIN_15;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pin : MODE_Pin */
  GPIO_InitStruct.Pin = MODE_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(MODE_GPIO_Port, &GPIO_InitStruct);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */


void lcd_color_transfer_ready_cb(SPI_HandleTypeDef *hspi)
{
	/* CS high */
	HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_SET);
	lcd_bus_busy = 0;
	lv_display_flush_ready(lcd_disp);
}

/* Initialize LCD I/O bus, reset LCD */
static int32_t lcd_io_init(void)
{
	/* Register SPI Tx Complete Callback */
	HAL_SPI_RegisterCallback(&hspi1, HAL_SPI_TX_COMPLETE_CB_ID, lcd_color_transfer_ready_cb);

	/* reset LCD */
	HAL_GPIO_WritePin(LCD_RESET_GPIO_Port, LCD_RESET_Pin, GPIO_PIN_RESET);
	osDelay(10);
	HAL_GPIO_WritePin(LCD_RESET_GPIO_Port, LCD_RESET_Pin, GPIO_PIN_SET);
	osDelay(10);

	HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_SET);
	HAL_GPIO_WritePin(LCD_DCX_GPIO_Port, LCD_DCX_Pin, GPIO_PIN_SET);

	return HAL_OK;
}

/* Platform-specific implementation of the LCD send command function. In general this should use polling transfer. */
static void lcd_send_cmd(lv_display_t *disp, const uint8_t *cmd, size_t cmd_size, const uint8_t *param, size_t param_size)
{
	LV_UNUSED(disp);
	while (lcd_bus_busy);   /* wait until previous transfer is finished */
	/* Set the SPI in 8-bit mode */
	hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
	HAL_SPI_Init(&hspi1);
	/* DCX low (command) */
	HAL_GPIO_WritePin(LCD_DCX_GPIO_Port, LCD_DCX_Pin, GPIO_PIN_RESET);
	/* CS low */
	HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_RESET);
	/* send command */
	if (HAL_SPI_Transmit(&hspi1, cmd, cmd_size, BUS_SPI1_POLL_TIMEOUT) == HAL_OK) {
		/* DCX high (data) */
		HAL_GPIO_WritePin(LCD_DCX_GPIO_Port, LCD_DCX_Pin, GPIO_PIN_SET);
		/* for short data blocks we use polling transfer */
		HAL_SPI_Transmit(&hspi1, (uint8_t *)param, (uint16_t)param_size, BUS_SPI1_POLL_TIMEOUT);
		/* CS high */
		HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_SET);
	}
}

/* Platform-specific implementation of the LCD send color function. For better performance this should use DMA transfer.
 * In case of a DMA transfer a callback must be installed to notify LVGL about the end of the transfer.
 */
static void lcd_send_color(lv_display_t *disp, const uint8_t *cmd, size_t cmd_size, uint8_t *param, size_t param_size)
{
	LV_UNUSED(disp);
	while (lcd_bus_busy);   /* wait until previous transfer is finished */
	/* Set the SPI in 8-bit mode */
	hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
	HAL_SPI_Init(&hspi1);
	/* DCX low (command) */
	HAL_GPIO_WritePin(LCD_DCX_GPIO_Port, LCD_DCX_Pin, GPIO_PIN_RESET);
	/* CS low */
	HAL_GPIO_WritePin(LCD_CS_GPIO_Port, LCD_CS_Pin, GPIO_PIN_RESET);
	/* send command */
	if (HAL_SPI_Transmit(&hspi1, cmd, cmd_size, BUS_SPI1_POLL_TIMEOUT) == HAL_OK) {
		/* DCX high (data) */
		HAL_GPIO_WritePin(LCD_DCX_GPIO_Port, LCD_DCX_Pin, GPIO_PIN_SET);
		/* for color data use DMA transfer */
		/* Set the SPI in 16-bit mode to match endianness */
		hspi1.Init.DataSize = SPI_DATASIZE_16BIT;
		HAL_SPI_Init(&hspi1);
		lcd_bus_busy = 1;
		HAL_SPI_Transmit_DMA(&hspi1, param, (uint16_t)param_size / 2);
		/* NOTE: CS will be reset in the transfer ready callback */
	}
}


/*
long map(long x, long in_min, long in_max, long out_min, long out_max) {
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

// LOWER RES & 11% SLOWER
void getColor(float thermal_data, uint8_t *R, uint8_t *G, uint8_t *B, float T_min, float T_max)
{
	T_max -= 1.2;
    if(thermal_data > T_max) // Tier 1 Red
    {
        *R = map(thermal_data, T_min, T_max, 0, 255);
        *G = 0;
        *B = 0;
    }
    else if(thermal_data < T_max && thermal_data > (T_max - 1.75)) // Tier 2 Yellow
    {
        *R = map(thermal_data, T_min, T_max, 0, 255);
        *G = map(thermal_data, T_min, T_max, 0, 255);
        *B = 0;
    }
    else if(thermal_data < (T_max - 1.75) && thermal_data > (T_max - 4)) // Tier 3 Green
    {
        *R = 0;
        *G = map(thermal_data, T_min, T_max, 0, 255);;
        *B = 0;
    }
    else // Tier 4 Blue
    {
        *R = 0;
        *G = 0;
        *B = map(thermal_data, T_min, T_max, 0, 255);
    }
}*/


// HIGH RES
void getColor(float thermal_data, uint8_t *R, uint8_t *G, uint8_t *B, float T_min, float T_max)
{
	T_max -= 1;
    float range_max = 255.0 / (T_max - T_min);  // Precalculate scaling factor for range mapping

    if(thermal_data > T_max)  // Red
    {
        *R = 255;
        *G = 0;
        *B = 0;
    }
    else if(thermal_data > (T_max - 1.75))  // Yellow
    {
        *R = (thermal_data - T_min) * range_max;
        *G = (thermal_data - T_min) * range_max;
        *B = 0;
    }
    else if(thermal_data > (T_max - 4))  // Green
    {
        *R = 0;
        *G = (thermal_data - T_min) * range_max;
        *B = 0;
    }
    else  // Blue
    {
        *R = 0;
        *G = 0;
        *B = (thermal_data - T_min) * range_max;
    }
}


void get_rgb565_color(uint8_t R, uint8_t G, uint8_t B, uint8_t *high_byte, uint8_t *low_byte) {
    // Scale 8-bit RGB values to RGB565 (5-bit red, 6-bit green, 5-bit blue)
    uint16_t color = (R >> 3) << 11 | (G >> 2) << 5 | (B >> 3);

    // Extract high and low bytes
    *high_byte = (color >> 8) & 0xFF;  // High byte (first 8 bits)
    *low_byte = color & 0xFF;          // Low byte (last 8 bits)
}

void update_image_data_scaled_bilinear(float *thermal_data, int src_width, int src_height, int dst_width, int dst_height) {
    int dst_index = 0;
    uint8_t R, G, B, high_byte, low_byte;

    float x_ratio = ((float)(src_width - 1)) / dst_width;
    float y_ratio = ((float)(src_height - 1)) / dst_height;

    for (int y = 0; y < dst_height; y++)
    {
        float src_y = y * y_ratio;
        int y_low = (int)src_y;
        int y_high = y_low + 1;
        float y_lerp = src_y - y_low;

        if (y_high >= src_height)
            y_high = src_height - 1;

        for (int x = 0; x < dst_width; x++)
        {
            float src_x = x * x_ratio;
            int x_low = (int)src_x;
            int x_high = x_low + 1;
            float x_lerp = src_x - x_low;

            if (x_high >= src_width)
                x_high = src_width - 1;

            // Get temperatures at the four surrounding pixels
            float temp_ll = thermal_data[y_low * src_width + x_low];
            float temp_lh = thermal_data[y_low * src_width + x_high];
            float temp_hl = thermal_data[y_high * src_width + x_low];
            float temp_hh = thermal_data[y_high * src_width + x_high];

            // Interpolate temperature values
            float temp_low = temp_ll + (temp_lh - temp_ll) * x_lerp;
            float temp_high = temp_hl + (temp_hh - temp_hl) * x_lerp;
            float temp_value = temp_low + (temp_high - temp_low) * y_lerp;

            // Map temperature to RGB values
            getColor(temp_value, &R, &G, &B, T_min, T_max);

            // Convert RGB to RGB565 and store in the image data array
            get_rgb565_color(B, R, G, &high_byte, &low_byte);
            thermal_data_arr[dst_index++] = high_byte;  // High byte
            thermal_data_arr[dst_index++] = low_byte;   // Low byte
        }
    }
}

void LVGL_Task(void const *argument)
{
    /* Initialize LVGL */
    lv_init();

    /* Initialize LCD I/O */
    if (lcd_io_init() != 0)
        return;

    /* Create the LVGL display object and the LCD display driver */
    lcd_disp = lv_st7789_create(LCD_H_RES, LCD_W_RES, LV_LCD_FLAG_NONE, lcd_send_cmd, lcd_send_color);
    lv_display_set_rotation(lcd_disp, LV_DISPLAY_ROTATION_270);

    /* Allocate draw buffers on the heap. In this example we use two partial buffers of 1/10th size of the screen */
    lv_color_t *buf1 = NULL;
    lv_color_t *buf2 = NULL;

    uint32_t buf_size = LCD_W_RES * LCD_H_RES / 10 * lv_color_format_get_size(lv_display_get_color_format(lcd_disp));

    buf1 = lv_malloc(buf_size);
    if (buf1 == NULL) {
        LV_LOG_ERROR("display draw buffer malloc failed");
        return;
    }

    buf2 = lv_malloc(buf_size);
    if (buf2 == NULL) {
        LV_LOG_ERROR("display buffer malloc failed");
        lv_free(buf1);
        return;
    }
    lv_display_set_buffers(lcd_disp, buf1, buf2, buf_size, LV_DISPLAY_RENDER_MODE_PARTIAL);

	// set background
	lv_obj_t *scr = lv_screen_active(); // Get the active screen object
	lv_obj_set_pos(scr, -1, 0);
	lv_obj_set_style_bg_color(scr, lv_color_hex(0x000000), 0);
	lv_obj_set_style_bg_opa(scr, LV_OPA_100, 0); // Set the background opacity to 100% (fully opaque)

	/*// Create an image object and set the image source
	lv_obj_t *img1 = lv_img_create(lv_scr_act());
	lv_img_set_src(img1, &gatewayimgtest);
	lv_obj_align(img1, LV_ALIGN_CENTER, 0, 0); // Center the image
	//lv_image_set_scale(img1, 512); // 512 is double size
	//lv_image_set_rotation(img1, 1800); // 45.0 degrees clockwise[*/

    char buffer[16];  // Buffer to store center temp
    lv_obj_t *label1 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label1, LV_ALIGN_LEFT_MID, 10, -65);  //
    lv_obj_set_style_text_font(label1, &lv_font_montserrat_20, 0);  // Change font size
    lv_obj_set_style_text_color(label1, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer2[16];  // Buffer to store battery voltage
    lv_obj_t *label2 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label2, LV_ALIGN_LEFT_MID, 10, -48);  //
    lv_obj_set_style_text_font(label2, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label2, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer3[16];  // Buffer for max temp in deg. C
    lv_obj_t *label3 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label3, LV_ALIGN_LEFT_MID, 10, 5);  //
    lv_obj_set_style_text_font(label3, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label3, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer5[16]; // Stores "Max"
    lv_obj_t *label5 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label5, LV_ALIGN_LEFT_MID, 10, -10);  //
    lv_obj_set_style_text_font(label5, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label5, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer4[16];  // Buffer to store min temp in deg. C
    lv_obj_t *label4 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label4, LV_ALIGN_LEFT_MID, 10, 50);
    lv_obj_set_style_text_font(label4, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label4, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer6[16]; // Stores "Min"
    lv_obj_t *label6 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label6, LV_ALIGN_LEFT_MID, 10, 35);  //
    lv_obj_set_style_text_font(label6, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label6, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer7[16]; // Stores max in deg. F
    lv_obj_t *label7 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label7, LV_ALIGN_LEFT_MID, 10, 20);  //
    lv_obj_set_style_text_font(label7, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label7, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    char buffer8[16]; // Stores min in deg. F
    lv_obj_t *label8 = lv_label_create(lv_scr_act()); // Create a new label object
    lv_obj_align(label8, LV_ALIGN_LEFT_MID, 10, 65);  //
    lv_obj_set_style_text_font(label8, &lv_font_montserrat_16, 0);  // Change font size
    lv_obj_set_style_text_color(label8, lv_color_hex(0xFFFFFF), 0); // Set text color (hex value)

    // Create the image object once outside the loop
    lv_obj_t *img = lv_img_create(lv_scr_act()); // Create image object
    lv_img_set_src(img, &therm_img_dsc);  // Set the initial image data source
    lv_img_set_angle(img, 1800);        // Rotate 180 degrees (1800 tenths of a degree)
    lv_obj_align(img, LV_ALIGN_RIGHT_MID, 0, 0);  // Align image in the center

    for(;;)
    {

        sprintf(buffer2, "%.2f V", batteryVoltage);  // Convert temperature to string

        // Update the label with the new temperature string
        lv_label_set_text(label2, buffer2);

    	if (HAL_GPIO_ReadPin(MODE_GPIO_Port, MODE_Pin) == GPIO_PIN_RESET)
    	{
            T_min = 999.0f;
            T_max = -999.0f;

            for (int i = 0; i < 768; i++)
            {
                if (mlx90640To[i] > T_max)
                {
                    T_max = mlx90640To[i];  // Update T_max if a higher temperature is found
                }
                if (mlx90640To[i] < T_min)
                {
                    T_min = mlx90640To[i];  // Update T_min if a lower temperature is found
                }
            }
            // Update image data from the thermal sensor
        	update_image_data_scaled_bilinear(mlx90640To, MLX_WIDTH, MLX_HEIGHT, MLX_W_RES, MLX_H_RES);

            // Refresh the image object with the updated data
            lv_img_set_src(img, &therm_img_dsc);  // Update the image data source

            sprintf(buffer5, "T_Max:");  // Convert temperature to string
            sprintf(buffer3, "%.2f C", T_max);  // Convert temperature to string
            sprintf(buffer7, "%.2f F", ((T_max * 1.8) + 32));  // Convert temperature to string
            sprintf(buffer6, "T_Min:");
            sprintf(buffer4, "%.2f C", T_min);  // Convert temperature to string
            sprintf(buffer8, "%.2f F", ((T_min * 1.8) + 32));  // Convert temperature to string

            // Update the label with the new temperature string
            lv_label_set_text(label3, buffer3);
            lv_label_set_text(label4, buffer4);
            lv_label_set_text(label5, buffer5);
            lv_label_set_text(label6, buffer6);
            lv_label_set_text(label7, buffer7);
            lv_label_set_text(label8, buffer8);

    		// 4 middle pixels are 368, 369, 400, 401
    		float center_temp = (mlx90640To[368] + mlx90640To[369] + mlx90640To[400] + mlx90640To[401]) / 4;
            sprintf(buffer, "%.2f C", center_temp);  // Convert temperature to string

            // Update the label with the new temperature string
            lv_label_set_text(label1, buffer);
    	}
    	// else {freeze the screen}

        // Handle LVGL
        lv_timer_handler();
        osDelay(20);
    }
}



void MLX90640_Task(void const *argument)
{

    //osDelay(100);

    printf("Starting IR Cam...\n");
    //MLX90640_I2CInit(); I2C already enabled

    status = MLX90640_SetRefreshRate(MLX90640_ADDR, MLX90640_REFRESH_RATE);
    if (status != 0) {
    	printf("Failed to set refresh rate, status: %d", status);
    }

    //status = MLX90640_SetResolution(MLX90640_ADDR, MLX90640_RESOLUTION_19);
    //if (status != 0) {
    //	printf("Failed to set resolution, status: %d", status);
    //}

    //status = MLX90640_SetChessMode(MLX90640_ADDR);
    //if (status != 0) {
    //	printf("Failed to set chess mode, status: %d", status);
    //}

    status = MLX90640_DumpEE(MLX90640_ADDR, eeMLX90640);
    if (status != 0) {
        printf("Failed to dump EEPROM data, status: %d", status);
    }

    status = MLX90640_ExtractParameters(eeMLX90640, &mlx90640);
    if (status != 0) {
    	printf("Failed to extract parameters, status: %d", status);
    }

    while(1)
    {
        // Default mode is chess mode, only every second pixel will be updated
        // 2 subframes needed for full image update
        // Default sampling on sensor is 2Hz.

        status = MLX90640_GetFrameData(MLX90640_ADDR, mlx90640Frame);
        if (status < 0) {
        	printf("Failed to get frame data, status: %d", status);
            continue; // back to start of loop
        }

        tr = MLX90640_GetTa(mlx90640Frame, &mlx90640) - TA_SHIFT;
        MLX90640_CalculateTo(mlx90640Frame, &mlx90640, emissivity, tr, mlx90640To);
        MLX90640_BadPixelsCorrection((&mlx90640)->brokenPixels, mlx90640To, 1, &mlx90640);
        MLX90640_BadPixelsCorrection((&mlx90640)->outlierPixels, mlx90640To, 1, &mlx90640);

        //printf("%.2f C\n", mlx90640To[500]);  // Convert temperature to string

        osDelay(50);
    }
}

void ADC_Task(void const *argument)
{
	//printf("Starting ADC Task...\n");

	for (;;)
	{
    	uint32_t adcValue;

    	// Start ADC conversion
    	HAL_ADC_Start(&hadc1);
    	if (HAL_ADC_PollForConversion(&hadc1, 1000) == HAL_OK)
    	{
    	    adcValue = HAL_ADC_GetValue(&hadc1);
    	}

    	// Assuming R1 = 10kΩ and R2 = 15kΩ
    	float V_ref = 3.3;  // Reference voltage
    	float R1 = 2000.0;  // Resistor 1 (ohms)
    	float R2 = 5000.0;  // Resistor 2 (ohms)

    	// Calculate battery voltage
    	batteryVoltage = ((float)adcValue / 4095) * V_ref * ((R1 + R2) / R2);
		osDelay(500);
	}
}

/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void const * argument)
{
  /* USER CODE BEGIN 5 */
  /* Infinite loop */
  for(;;)
  {
	  HAL_GPIO_TogglePin(GPIOC, BLINK_Pin); // Toggle the LED
	  //printf("Blinking\n");
	  osDelay(250); // Delay in milliseconds
  }
  /* USER CODE END 5 */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM5 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM5) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
