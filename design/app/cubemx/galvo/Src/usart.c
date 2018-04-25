#include "usart.h"
#include "gpio.h"
#include <stdio.h>
#include <stdarg.h>
#include <string.h>

UART_HandleTypeDef huart5;
UART_HandleTypeDef huart1;
UART_HandleTypeDef huart2;
UART_HandleTypeDef huart3;
UART_HandleTypeDef huart6;

void MX_UART5_Init(void)
{
    huart5.Instance = UART5;
    huart5.Init.BaudRate = 115200;
    huart5.Init.WordLength = UART_WORDLENGTH_8B;
    huart5.Init.StopBits = UART_STOPBITS_1;
    huart5.Init.Parity = UART_PARITY_NONE;
    huart5.Init.Mode = UART_MODE_TX_RX;
    huart5.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart5.Init.OverSampling = UART_OVERSAMPLING_16;
    if (HAL_UART_Init(&huart5) != HAL_OK)
    {
        Error_Handler();
    }
}

void MX_USART1_UART_Init(void)
{
    huart1.Instance = USART1;
    huart1.Init.BaudRate = 115200;
    huart1.Init.WordLength = UART_WORDLENGTH_8B;
    huart1.Init.StopBits = UART_STOPBITS_1;
    huart1.Init.Parity = UART_PARITY_NONE;
    huart1.Init.Mode = UART_MODE_TX_RX;
    huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart1.Init.OverSampling = UART_OVERSAMPLING_16;
    if (HAL_UART_Init(&huart1) != HAL_OK)
    {
        Error_Handler();
    }
}

void MX_USART2_UART_Init(void)
{
    huart2.Instance = USART2;
    huart2.Init.BaudRate = 145200;
    huart2.Init.WordLength = UART_WORDLENGTH_8B;
    huart2.Init.StopBits = UART_STOPBITS_1;
    huart2.Init.Parity = UART_PARITY_NONE;
    huart2.Init.Mode = UART_MODE_TX_RX;
    huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart2.Init.OverSampling = UART_OVERSAMPLING_16;
    if (HAL_UART_Init(&huart2) != HAL_OK)
    {
        Error_Handler();
    }
}

void MX_USART3_UART_Init(void)
{
    huart3.Instance = USART3;
    huart3.Init.BaudRate = 115200;
    huart3.Init.WordLength = UART_WORDLENGTH_8B;
    huart3.Init.StopBits = UART_STOPBITS_1;
    huart3.Init.Parity = UART_PARITY_NONE;
    huart3.Init.Mode = UART_MODE_TX_RX;
    huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart3.Init.OverSampling = UART_OVERSAMPLING_16;
    if (HAL_UART_Init(&huart3) != HAL_OK)
    {
        Error_Handler();
    }
}

void MX_USART6_UART_Init(void)
{
    huart6.Instance = USART6;
    huart6.Init.BaudRate = 115200;
    huart6.Init.WordLength = UART_WORDLENGTH_8B;
    huart6.Init.StopBits = UART_STOPBITS_1;
    huart6.Init.Parity = UART_PARITY_NONE;
    huart6.Init.Mode = UART_MODE_TX_RX;
    huart6.Init.HwFlowCtl = UART_HWCONTROL_NONE;
    huart6.Init.OverSampling = UART_OVERSAMPLING_16;
    if (HAL_UART_Init(&huart6) != HAL_OK)
    {
        Error_Handler();
    }
}

void HAL_UART_MspInit(UART_HandleTypeDef* uartHandle)
{
    GPIO_InitTypeDef GPIO_InitStruct;
    if(uartHandle->Instance==UART5)
    {
        /* Peripheral clock enable */
        __HAL_RCC_UART5_CLK_ENABLE();

        /* UART5 GPIO Configuration, PC12: UART5_TX, PD2 : UART5_RX */
        GPIO_InitStruct.Pin = GPIO_PIN_12;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF8_UART5;
        HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

        GPIO_InitStruct.Pin = GPIO_PIN_2;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF8_UART5;
        HAL_GPIO_Init(GPIOD, &GPIO_InitStruct);
    }
    else if(uartHandle->Instance==USART1)
    {
        /* Peripheral clock enable */
        __HAL_RCC_USART1_CLK_ENABLE();

        /* USART1 GPIO Configuration, PA9: USART1_TX, PA10: USART1_RX */
        GPIO_InitStruct.Pin = GPIO_PIN_9|GPIO_PIN_10;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF7_USART1;
        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    }
    else if(uartHandle->Instance==USART2)
    {
        /* Peripheral clock enable */
        __HAL_RCC_USART2_CLK_ENABLE();

        /* USART2 GPIO Configuration, PA2: USART2_TX, PA3: USART2_RX */
        GPIO_InitStruct.Pin = GPIO_PIN_2|GPIO_PIN_3;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
        HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
    }
    else if(uartHandle->Instance==USART3)
    {
        /* Peripheral clock enable */
        __HAL_RCC_USART3_CLK_ENABLE();

        /* USART3 GPIO Configuration, PB10: USART3_TX, PB11: USART3_RX */
        GPIO_InitStruct.Pin = GPIO_PIN_10|GPIO_PIN_11;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF7_USART3;
        HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
    }
    else if(uartHandle->Instance==USART6)
    {
        /* Peripheral clock enable */
        __HAL_RCC_USART6_CLK_ENABLE();

        /* USART6 GPIO Configuration, PC6: USART6_TX, PC7: USART6_RX */
        GPIO_InitStruct.Pin = GPIO_PIN_6|GPIO_PIN_7;
        GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
        GPIO_InitStruct.Pull = GPIO_PULLUP;
        GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
        GPIO_InitStruct.Alternate = GPIO_AF8_USART6;
        HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
    }
}

#define ZEROPAD           0x01               /* Pad with zero        */
#define SIGN              0x02               /* Unsigned/signed long */
#define PLUS              0x04               /* Show plus            */
#define SPACE             0x08               /* Space if plus        */
#define LEFT              0x10               /* Left justified       */
#define SPECIAL           0x20               /* 0x                   */
#define LARGE             0x40               /* Use upper character  */
#define is_digit(c)  ((c)>='0' && (c)<='9')

const char digits[37]       = "0123456789abcdefghijklmnopqrstuvwxyz";
const char upper_digits[37] = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

int uart_skip_atoi(const char **s)
{
    int i = 0;
    const char *t = *s;
    while (is_digit(*t)) i = i*10 + *(t++) - '0';
    *s = t;
    return i;
}

int uart_strlen(const char *s, int count)
{
    const char *sc;
    for (sc = s; *sc != '\0' && count--; ++sc) ;
    return (sc - s);
}

char *uart_number(char *str, int num, int base, int size, int precision, int type)
{
    int i;
    char c, sign, tmp[66];
    char *dig = (char *)digits;

    if (type & LARGE)
    {
        dig = (char *)upper_digits;
    }
    if (type & LEFT)
    {
        type &= ~ZEROPAD;
    }
    if (base < 2 || base > 36)
    {
        return 0;
    }

    c = (type & ZEROPAD) ? '0' : ' ';
    sign = 0;

    if (type & SIGN)
    {
        if (num < 0)
        {
            sign = '-';
            num = -num;
            size--;
        }
        else if (type & PLUS)
        {
            sign = '+';
            size--;
        }
        else if (type & SPACE)
        {
            sign = ' ';
            size--;
        }
    }

    if (type & SPECIAL)
    {
        if (base == 16)
        {
            size -= 2;
        }
        else if (base == 8)
        {
            size--;
        }
    }

    i = 0;
    if (num == 0)
    {
        tmp[i++] = '0';
    }
    else
    {
        while (num != 0)
        {
            tmp[i++] = dig[((int) num) % (int) base];
            num = ((int) num) / (int) base;
        }
    }

    if (i > precision)
    {
        precision = i;
    }
    size -= precision;
    if (!(type & (ZEROPAD | LEFT)))
    {
        while (size-- > 0)
        {
            *str++ = ' ';
        }
    }
    if (sign)
    {
        *str++ = sign;
    }
    if (type & SPECIAL)
    {
        if (base == 8)
        {
            *str++ = '0';
        }
        else if (base == 16)
        {
            *str++ = '0';
            *str++ = digits[33];
        }
    }

    if (!(type & LEFT))
    {
        while (size-- > 0)
        {
            *str++ = c;
        }
    }
    while (i < precision--)
    {
        *str++ = '0';
    }
    while (i-- > 0)
    {
        *str++ = tmp[i];
    }
    while (size-- > 0)
    {
        *str++ = ' ';
    }

    return str;
}

void uart_vsprintf (char *buf, const char *fmt, va_list args)
{
    int len, num, i, base, flags, field_width, precision, qualifier;
    char *str, *s;

    for (str = buf; *fmt; fmt++)
    {
        if (*fmt != '%')
        {
            *str++ = *fmt;
            continue;
        }

        /* process flags */
        flags = 0;

        repeat:
        fmt++; /* This also skips first '%' */
        switch (*fmt)
        {
            case '-': flags |= LEFT;    goto repeat;
            case '+': flags |= PLUS;    goto repeat;
            case ' ': flags |= SPACE;   goto repeat;
            case '#': flags |= SPECIAL; goto repeat;
            case '0': flags |= ZEROPAD; goto repeat;
        }

        /* get field width */
        field_width = -1;
        if (is_digit(*fmt))
        {
            field_width = uart_skip_atoi(&fmt);
        }
        else if (*fmt == '*')
        {
            fmt++;
            field_width = va_arg(args, int);
            if (field_width < 0)
            {
                field_width = -field_width;
                flags |= LEFT;
            }
        }

        /* get the precision */
        precision = -1;
        if (*fmt == '.')
        {
            ++fmt;
            if (is_digit(*fmt))
            {
                precision = uart_skip_atoi(&fmt);
            }
            else if (*fmt == '*')
            {
                ++fmt;
                precision = va_arg(args, int);
            }
            if (precision < 0)
            {
                precision = 0;
            }
        }

        /* get the conversion qualifier */
        qualifier = -1;
        if (*fmt == 'h' || *fmt == 'l' || *fmt == 'L')
        {
            qualifier = *fmt;
            fmt++;
        }

        /* Default base */
        base = 10;

        switch (*fmt)
        {
            case 'c':
                if (!(flags & LEFT))
                {
                    while (--field_width > 0)
                    {
                        *str++ = ' ';
                    }
                }
                *str++ = (uint8_t)va_arg(args, int);
                while (--field_width > 0)
                {
                    *str++ = ' ';
                }
            continue;

            case 's':
                s = va_arg(args, char *);
                if (!s)
                {
                    s = "<NULL>";
                }
                len = uart_strlen(s, precision);
                if (!(flags & LEFT))
                {
                    while (len < field_width--)
                    {
                        *str++ = ' ';
                    }
                }
                for (i = 0; i < len; ++i)
                {
                    *str++ = *s++;
                }
                while (len < field_width--)
                {
                    *str++ = ' ';
                }
            continue;

            case 'n':
                if (qualifier == 'l')
                {
                    va_arg(args, int *);
                }
                else
                {
                    va_arg(args, int *);
                }
            continue;

            case 'A':
                flags |= LARGE;

            case 'o':
                base = 8;
            break;

            case 'X':
                flags |= LARGE;

            case 'x':
                base = 16;
            break;

            case 'd':
            case 'i':
                flags |= SIGN;

            case 'u':
            break;

            default:
                if (*fmt != '%')
                {
                    *str++ = '%';
                }
                if (*fmt)
                {
                    *str++ = *fmt;
                }
                else
                {
                    --fmt;
                }
            continue;
        }

        if (qualifier == 'l')
        {
            num = va_arg(args, int);
        }
        else if (qualifier == 'h')
        {
             if (flags & SIGN)
             {
                 num = va_arg(args, int);
             }
             else
             {
                 num = va_arg(args, int);
             }
        }
        else if (flags & SIGN)
        {
            num = va_arg(args, int);
        }
        else
        {
            num = va_arg(args, int);
        }

        str = uart_number(str, num, base, field_width, precision, flags);
    }

    *str = '\0';
    return;
}

void uart_printf (const char *fmt, ...)
{
    char buf[100];
    uint16_t size;
    va_list argp;
    va_start(argp, fmt);
    uart_vsprintf(buf, fmt, argp);
    size = strlen(buf);
    HAL_UART_Transmit(&huart2, (uint8_t *)buf, size, 100);
    return;
}
