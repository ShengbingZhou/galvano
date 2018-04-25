#include "stm32f4xx_hal.h"
#include "adc.h"
#include "dac.h"
#include "usart.h"
#include "gpio.h"
#include "main.h"
#include "pid.h"
#include "ss.h"

/* set one of following to 1 */
#define PID_CONTROL     1
#define SSP_CONTROL     0

void SystemClock_Config(void);
void Error_Handler(void);

int main(void)
{
    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* Configure the system clock */
    SystemClock_Config();

    /* Initialize all configured peripherals */
    MX_GPIO_Init();
    MX_ADC1_Init();
    MX_ADC2_Init();
    MX_ADC3_Init();
    MX_DAC_Init();
    HAL_UART_MspInit(&huart1);
    HAL_UART_MspInit(&huart2);
    HAL_UART_MspInit(&huart3);
    MX_USART1_UART_Init();
    MX_USART2_UART_Init();
    MX_USART3_UART_Init();

    /* Start ADC & DAC */
    HAL_ADC_Start(&hadc1);
    HAL_ADC_Start(&hadc2);
    HAL_DAC_Start(&hdac, DAC_CHANNEL_1);

    /* Init modudles */
    #if PID_CONTROL
    pid_init();
    #endif
    #if SSP_CONTROL
    ss_init();
    #endif

    /* Infinite loop */
    while (1)
    {
        #if PID_CONTROL
        pid_loop();
        #endif
        #if SSP_CONTROL
        ss_loop();
        #endif
    }
}

/*!
 * @brief: System Clock Configuration
 */
void SystemClock_Config(void)
{
    RCC_OscInitTypeDef RCC_OscInitStruct;
    RCC_ClkInitTypeDef RCC_ClkInitStruct;

    __HAL_RCC_PWR_CLK_ENABLE();
    __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);

    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
    RCC_OscInitStruct.HSEState = RCC_HSE_ON;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
    RCC_OscInitStruct.PLL.PLLM = 10;
    RCC_OscInitStruct.PLL.PLLN = 168;
    RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
    RCC_OscInitStruct.PLL.PLLQ = 4;
    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
    {
        Error_Handler();
    }

    RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK|RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;                   /* PCLK1: 42MHz */
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;                   /* PCLK2: 84MHz */
    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
    {
        Error_Handler();
    }

    HAL_SYSTICK_Config(HAL_RCC_GetHCLKFreq()/1000);
    HAL_SYSTICK_CLKSourceConfig(SYSTICK_CLKSOURCE_HCLK);
    HAL_NVIC_SetPriority(SysTick_IRQn, 0, 0);                           /* SysTick_IRQn interrupt configuration */
}

/*!
 * @brief  This function is executed in case of error occurrence.
 */
void Error_Handler(void)
{
    while(1)
    {
    }
}

#ifdef USE_FULL_ASSERT
/*!
 * @brief Reports the name of the source file and the source line number
 * where the assert_param error has occurred.
 * @param file: pointer to the source file name
 * @param line: assert_param error line source number
 * @retval None
 */
void assert_failed(uint8_t* file, uint32_t line)
{
    printf("Wrong parameters value: file %s on line %d\r\n", file, line);
}
#endif

