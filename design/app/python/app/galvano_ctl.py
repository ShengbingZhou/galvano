# @file:    simulation script for galvano pid
# @version: v0.0.1
# @author:  shengbingzhou@outlook.com

import sys
import time
import array
import numpy
import scipy
import scipy.signal
import matplotlib.pyplot
import matplotlib.animation
import aardvark_py

def set_reg(addr, value):
    data_in = aardvark_py.array_u08(4)
    (count, data_in) = aardvark_py.aa_spi_write(aardvark, array.array('B', [ 0x03, addr, value >> 8, value & 0xff]), data_in)

def get_reg(addr):
    data_in = aardvark_py.array_u08(4)
    (count, data_in) = aardvark_py.aa_spi_write(aardvark, array.array('B', [ 0x04, addr, 0x00, 0x00 ]), data_in)
    return (data_in[2] << 8) + data_in[3]

(a_num, a_ports, a_ids) = aardvark_py.aa_find_devices_ext(16, 16)
if (a_num) > 0:
    aardvark = aardvark_py.aa_open(a_ports[0])
    aardvark_py.aa_configure(aardvark,  aardvark_py.AA_CONFIG_SPI_GPIO)
    aardvark_py.aa_target_power(aardvark, aardvark_py.AA_TARGET_POWER_BOTH)                
    aardvark_py.aa_spi_configure(aardvark, 0, 0, aardvark_py.AA_SPI_BITORDER_MSB) # pol = 0, pha = 0
    aardvark_py.aa_spi_bitrate(aardvark, 1000) # 1Mbps
else:
    raise Exception('USB dongle not found.')

# release system reset, adc and dac start to work
set_reg(2, 0x0001)
time.sleep(0.5)

# set kp, ki, kd
set_reg(3, 30) #kp
set_reg(4, 4)  #ki
set_reg(5, 49) #kd

# set target
set_reg(6, 45000) #target

# start pid
set_reg(2, 0x00000)