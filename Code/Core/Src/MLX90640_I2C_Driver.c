#include "MLX90640_I2C_Driver.h"
#include "stm32f4xx_hal.h"
#include "cmsis_os.h"

extern I2C_HandleTypeDef hi2c1;

void MLX90640_I2CInit()
{

}

int MLX90640_I2CGeneralReset(void)
{

}

int MLX90640_I2CRead(uint8_t slaveAddr, uint16_t startAddress, uint16_t nMemAddressRead, uint16_t* data)
{
    // Data buffer, we will read the raw bytes here before processing them (nMemAddressRead * 2 bytes)
    uint8_t* p = (uint8_t*)data;

    // Use HAL's built-in I2C memory read function, which handles both address and data transmission.
    // This will read nMemAddressRead 16-bit words into the buffer p.
    if (HAL_I2C_Mem_Read(&hi2c1, (slaveAddr << 1), startAddress, I2C_MEMADD_SIZE_16BIT, p, nMemAddressRead * 2, HAL_MAX_DELAY) != HAL_OK)
    {
        return -1;  // Return -1 if the communication fails (NACK or other issue)
    }

    // Ensure the I2C bus is ready before proceeding
    //while (HAL_I2C_GetState(&hi2c1) != HAL_I2C_STATE_READY) {}

    // Post-process the data to restore the correct endianness
    // MLX90640 returns data in LSByte-first format, so we need to swap the bytes.
    for (int i = 0; i < nMemAddressRead * 2; i += 2)
    {
        uint8_t tempBuffer = p[i + 1];
        p[i + 1] = p[i];
        p[i] = tempBuffer;
    }

    return 0;  // Return 0 if successful
}

int MLX90640_I2CWrite(uint8_t slaveAddr, uint16_t writeAddress, uint16_t data)
{
    uint8_t cmd[2];
    static uint16_t datacheck;

    // Prepare the 16-bit data in LSByte-first format, as required by the MLX90640.
    cmd[0] = data >> 8;  // MSByte first
    cmd[1] = data & 0x00FF;  // LSByte second

    // Use HAL's I2C memory write function to write the data.
    // This function handles the address and the data in one transaction.
    if (HAL_I2C_Mem_Write(&hi2c1, slaveAddr << 1, writeAddress, I2C_MEMADD_SIZE_16BIT, cmd, 2, 1000) != HAL_OK)
    {
        return -1;  // Return -1 if there was a NACK or communication failure
    }

    // Verify the data by reading it back and checking if the written data matches the read data.
    MLX90640_I2CRead(slaveAddr, writeAddress, 1, &datacheck);
    if (datacheck != data)
    {
        return -2;  // Return -2 if the data verification failed
    }

    // Ensure the I2C bus is ready before allowing other operations
    //while (HAL_I2C_GetState(&hi2c1) != HAL_I2C_STATE_READY) {}

    return 0;  // Return 0 if successful
}
