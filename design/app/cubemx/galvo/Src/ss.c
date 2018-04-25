#include "stm32f4xx_hal.h"
#include "adc.h"
#include "dac.h"
#include "gpio.h"
#include "ss.h"

/*!
 *  @brief     init state-space control
 *  @param     none
 *  @return    none
 */
void ss_init()
{
    return;
}

/*!
 *  @brief     state-space control implementation
 *  @param     none
 *  @return    none
 */
void ss_loop()
{
    /* get ADC input */
    uint32_t adc = HAL_ADC_GetValue(&hadc1);

    /* set DAC output */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048);  /* 12bit right aligned, 2048/4096 * 3.3 = 1.65v */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2, DAC_ALIGN_12B_R, 2048);

    return;
}
