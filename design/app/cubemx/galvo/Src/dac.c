#include "dac.h"
#include "gpio.h"

DAC_HandleTypeDef hdac;

/* DAC init function */
void MX_DAC_Init(void)
{
    DAC_ChannelConfTypeDef sConfig;

    /* DAC Initialization */
    hdac.Instance = DAC;
    if (HAL_DAC_Init(&hdac) != HAL_OK)
    {
        Error_Handler();
    }

    /* DAC channel OUT1 config */
    sConfig.DAC_Trigger = DAC_TRIGGER_NONE;
    sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
    if (HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1) != HAL_OK)
    {
        Error_Handler();
    }

    /* DAC channel OUT2 config */
    if (HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_2) != HAL_OK)
    {
        Error_Handler();
    }
}

void HAL_DAC_MspInit(DAC_HandleTypeDef* dacHandle)
{
    GPIO_InitTypeDef GPIO_InitStruct;
    if(dacHandle->Instance==DAC)
    {
        /* Peripheral clock enable */
        __HAL_RCC_DAC_CLK_ENABLE();

        /* DAC GPIO Configuration: PA4: DAC_OUT1, PA5: DAC_OUT2 */
        GPIO_InitStruct.Pin = GPIO_PIN_4|GPIO_PIN_5;
        GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
        GPIO_InitStruct.Pull = GPIO_NOPULL;
        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    }
}

void HAL_DAC_MspDeInit(DAC_HandleTypeDef* dacHandle)
{
    if(dacHandle->Instance==DAC)
    {
        /* Peripheral clock disable */
        __HAL_RCC_DAC_CLK_DISABLE();

        /* DAC GPIO Configuration: PA4: DAC_OUT1, PA5: DAC_OUT2 */
        HAL_GPIO_DeInit(GPIOA, GPIO_PIN_4|GPIO_PIN_5);
    }
}