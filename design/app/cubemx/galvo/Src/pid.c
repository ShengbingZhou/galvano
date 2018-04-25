#include "stm32f4xx_hal.h"
#include "adc.h"
#include "dac.h"
#include "gpio.h"
#include "pid.h"
#include "usart.h"
#include "main.h"
#include <stdlib.h>

typedef struct _pospid
{
    int   SetPosition;
    int   ActualPosition;
    int   err;
    int   err_last;
    int   Kp,Ki,Kd;
    int   voltage;
    int   integral;
}pospid_t;

static uint8_t  polarity;
static uint32_t xposDacCodeMin, xcoilDacCodeMin, xposDacCodeMax, xcoilDacCodeMax;
static uint32_t xposMin, xcoilMin, xposMax, xcoilMax;
static pospid_t xposPid;

/*!
 *  @brief     init pid control
 *  @param     none
 *  @return    none
 */
void pid_init()
{
    /* release motor */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048);  /* 12bit right aligned, 2048/4095 * 3.3 = 1.65v */

    /* spin motor to side A */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 0);     /* 12bit right aligned,    0/4095 * 3.3 = 0v    */
    HAL_Delay(100);
    HAL_ADC_Start(&hadc1);
    HAL_ADC_Start(&hadc2);
    xposDacCodeMin  = 3300 * HAL_ADC_GetValue(&hadc1) / 4095;       /* actual XPOS: 753mV ~ 800mV  */
    xcoilDacCodeMin = 3300 * HAL_ADC_GetValue(&hadc2) / 4095;       /* actual XCOIL: 1100 ~ 1117mV */

    /* release motor */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048);  /* 12bit right aligned, 2048/4095 * 3.3 = 1.65v */

    /* spin motor to side B */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 4095);  /* 12bit right aligned, 4095/4095 * 3.3 = 3.3v  */
    HAL_Delay(100);
    HAL_ADC_Start(&hadc1);
    HAL_ADC_Start(&hadc2);
    xposDacCodeMax  = 3300 * HAL_ADC_GetValue(&hadc1) / 4095;       /* actual XPOS: 3265mV ~ 3170mV */
    xcoilDacCodeMax = 3300 * HAL_ADC_GetValue(&hadc2) / 4095;       /* actual XCOIL: 595mV ~ 601mV  */

    /* release motor */
    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048);  /* 12bit right aligned, 2048/4095 * 3.3 = 1.65v */

    /* get coil polarity automatically */
    polarity = (xposDacCodeMin < xposDacCodeMax);
    xposMin  = (polarity) ? xposDacCodeMin : xposDacCodeMax;
    xposMax  = (polarity) ? xposDacCodeMax : xposDacCodeMin;
    xcoilMin = (xcoilDacCodeMin < xcoilDacCodeMax) ? xcoilDacCodeMin : xcoilDacCodeMax;
    xcoilMax = (xcoilDacCodeMin < xcoilDacCodeMax) ? xcoilDacCodeMax : xcoilDacCodeMin;

    /* init pid */
    xposPid.err = 0;
    xposPid.err_last = 0;
    xposPid.integral = 0;
    xposPid.voltage = 0;
    xposPid.Kp = 200;
    xposPid.Ki = 15;
    xposPid.Kd = 200;
    return;
}

/*!
 *  @brief     move to side with high pos voltage
 *  @param     none
 *  @return    none
 */
void pid_MoveAlongHighPosVoltage(int strength)
{
    strength = (strength > 2000) ? 2000 : strength;
    if(polarity)
    {
        HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048 + strength);
    }
    else
    {
        HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048 - strength);
    }
}

/*!
 *  @brief     move to side with low pos voltage
 *  @param     none
 *  @return    none
 */
void pid_MoveAlongLowPosVoltage(int strength)
{
    strength = (strength > 2000) ? 2000 : strength;
    if(polarity)
    {
        HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048 - strength);
    }
    else
    {
        HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048 + strength);
    }
}

/*!
 *  @brief     get next command (position)
 *  @param     none
 *  @return    dest position
 */
uint32_t pid_getNextCommand()
{
    static int i = 0, j = 0;
    uint32_t test_pos[] = {1000, 1200, 1400, 1600, 1800, 2000, 2200, 2400, 2600};
    if ((HAL_GetTick() - j) > 500)
    {
        i = (i >= 8) ? 0 : (i+1);
        j = HAL_GetTick();
    }
    return test_pos[i];
}

/*!
 *  @brief     pid control implementation
 *  @param     none
 *  @return    none
 */
void pid_loop()
{
    uint32_t xpos, xcoil;

    /* algorithm */
#if 1
    uint32_t command = pid_getNextCommand();
    xposPid.SetPosition = command;

    HAL_ADC_Start(&hadc1);
    HAL_ADC_Start(&hadc2);
    xpos  = 3300 * HAL_ADC_GetValue(&hadc1) / 4095;
    xcoil = 3300 * HAL_ADC_GetValue(&hadc2) / 4095;
    xposPid.ActualPosition = xpos;

    xposPid.err       = xposPid.SetPosition - xposPid.ActualPosition;
    xposPid.integral += xposPid.err;
    xposPid.voltage   = xposPid.Kp*xposPid.err + xposPid.Ki*xposPid.integral + xposPid.Kd*(xposPid.err - xposPid.err_last);
    xposPid.err_last  = xposPid.err;
    int strength = abs(xposPid.voltage) / 200000 + 100;
    if (abs(xposPid.err) < 10)
    {
        xposPid.integral = 0;
        xposPid.err_last = 0;
        return;
    }
    if (xposPid.voltage > 0)
    {
        pid_MoveAlongHighPosVoltage(strength);
    }
    else
    {
        pid_MoveAlongLowPosVoltage(strength);
    }
#endif

    /* simple test */
#if 0
    while (1)   // move between (min + 500mV) ~ (max - 500mV)
    {
        // move to low pos voltage side
        pid_MoveAlongLowPosVoltage(300);
        while(1)
        {
            HAL_ADC_Start(&hadc1);
            HAL_ADC_Start(&hadc2);
            xpos  = 3300 * HAL_ADC_GetValue(&hadc1) / 4095;
            xcoil = 3300 * HAL_ADC_GetValue(&hadc2) / 4095;
            //uart_printf("xpos: %4d mV, xcoil: %4d mV \r\n", xpos, xcoil);
            if (xpos < (xposMin + 500))
                break;
        }
        //uart_printf("xpos: %4d mV, xcoil: %4d mV \r\n", xpos, xcoil);

        // move to high pos voltage side
        pid_MoveAlongHighPosVoltage(300);
        while(1)
        {
            HAL_ADC_Start(&hadc1);
            HAL_ADC_Start(&hadc2);
            xpos  = 3300 * HAL_ADC_GetValue(&hadc1) / 4095;
            xcoil = 3300 * HAL_ADC_GetValue(&hadc2) / 4095;
            //uart_printf("xpos: %4d mV, xcoil: %4d mV \r\n", xpos, xcoil);
            if (xpos > (xposMax - 500))
                break;
        }
        //uart_printf("xpos: %4d mV, xcoil: %4d mV \r\n", xpos, xcoil);
    }
#endif

    return;
}
