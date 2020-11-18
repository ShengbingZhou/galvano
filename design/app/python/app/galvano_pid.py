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

def update(frame_number):
    global xp_data, line_data_bin
    xp_data = numpy.concatenate((xp_data[1:], get_xp_adc()), axis=None)
    line_data_bin.set_ydata(xp_data)

def fft(data):
    w = scipy.signal.chebwin(data.shape[0], 200, False)    # Dolph-Chebyshev
    w *= w.shape[0]/numpy.sum(w)
    s = scipy.fft(data*w, data.shape[0]*4)
    s = s/65535/len(s)*4
    f = numpy.linspace(0, 500e3, len(s))
    sdb = 20 * scipy.log10(scipy.absolute(s))
    matplotlib.pyplot.figure(figsize=(7, 7))
    matplotlib.pyplot.plot(f, sdb)
    matplotlib.pyplot.show()

def init_xp_adc():
    data_in = aardvark_py.array_u08(5)
    data_out = array.array('B', [ 0x01, 0xd0, 0x14, 0x00, 0x01 ]) # adc range: +/-2.5*4.096, default is +/-3*4.096v
    aardvark_py.aa_spi_write(pid.aardvark, data_out, data_in)

def get_xp_adc(in_pid = 0):
    global xp_last, xp_limit
    data_in = aardvark_py.array_u08(3)
    data_out = array.array('B', [ 0x01, 0x00, 0x00 ]) # nop command
    (count, data_in) = aardvark_py.aa_spi_write(pid.aardvark, data_out, data_in)
    adc_data = (data_in[1] << 8) + data_in[2]
    if in_pid > 0 and (adc_data < xp_limit[0] or adc_data > xp_limit[1]):
        adc_data = xp_last
    xp_last = adc_data
    return adc_data

def set_xi_dac(value):
    value = (value / 2) & 0xffff
    data_in = aardvark_py.array_u08(3)
    aardvark_py.aa_spi_write(pid.aardvark, array.array('B', [ 0x02, (value >> 8), (value & 0xff) ]), data_in) # 300us

def move_x_motor(pid, target, init_xidac):
    global xp_data, xi_dac, xp_data_total, xi_dac_total
    pid.set_point(target)
    for i in range(single_step_points):
        xp_data[i] = get_xp_adc(1)
        out = pid.update(xp_data[i])
        out = int(out)
        #out = int(out) + init_xidac
        max_dac_offset = 8000 # 1: 0.3mV, 1000: 0.3V, 3000: 0.9V
        out1 = (32768 + max_dac_offset) if out > (+max_dac_offset) else 32768 + out
        out1 = (32768 - max_dac_offset) if out < (-max_dac_offset) else 32768 + out
        xi_dac[i] = out1
        set_xi_dac(xi_dac[i]) # 300us
        xp_data_total.append(xp_data[i])
        xi_dac_total.append(xi_dac[i])

class pid_control:
    def __init__(self):
        # Find all the attached devices
        (a_num, a_ports, a_ids) = aardvark_py.aa_find_devices_ext(16, 16)
        if (a_num) > 0:
            self.aardvark = aardvark_py.aa_open(a_ports[0])
            aardvark_py.aa_configure(self.aardvark,  aardvark_py.AA_CONFIG_SPI_GPIO)
            aardvark_py.aa_target_power(self.aardvark, aardvark_py.AA_TARGET_POWER_BOTH)                
            aardvark_py.aa_spi_configure(self.aardvark, 0, 0, aardvark_py.AA_SPI_BITORDER_MSB) # pol = 0, pha = 0
            aardvark_py.aa_spi_bitrate(self.aardvark, 1000) # 1Mbps
        else:
            raise Exception('USB dongle not found.')

    def set_gain(self, P=0.0, I=0.0, D=0.0, integrator_max=100, integrator_min=-100):
        self.Kp = P
        self.Ki = I
        self.Kd = D
        self.integrator_max = integrator_max
        self.integrator_min = integrator_min

    def update(self,current_value):
        self.error      = self.setpoint - current_value
        self.P_value    = self.Kp * (self.error)
        self.D_value    = self.Kd * (self.error - self.derivator)
        self.integrator = self.integrator + self.error
        self.integrator = self.integrator_max if self.integrator > self.integrator_max else self.integrator
        self.integrator = self.integrator_min if self.integrator < self.integrator_min else self.integrator
        self.I_value    = self.Ki * (self.integrator)
        self.derivator  = self.error
        #print 'PID: %d, (%d: current is %d, error is %d, integrator is %d)'%(self.P_value + self.I_value + self.D_value, self.setpoint, current_value, self.error, self.integrator)
        return self.P_value + self.I_value + self.D_value

    def set_point(self, point):
        self.setpoint = point
        self.error = 0.0 
        self.derivator = 0.0
        self.integrator = 0.0

# instantiate pid controller
pid = pid_control()

# release motor
set_xi_dac(32768)
time.sleep(1)

# init xp adc
init_xp_adc()

# xp data and current array
single_step_points = 50 #points to finish single step move to target
xp_data = [0] * single_step_points
xi_dac  = [32768] * single_step_points
xp_data_total = []
xi_dac_total  = []

# 26368: -2.0000V
# 28288: -1.4000V
# 28928: -1.2000V
# 31168: -0.5000V
# 32768:  0.0000V
# 33408:  0.2000V
# 34368:  0.5000V
# 35000:  0.6975V
# 37568:  1.5000V
# 39168:  2.0000V
# 39600:  2.1350V
# 40000:  2.2600V
xp_limit = [0, 0]
xp_last  = 0

# set gain
pid.set_gain(P=0.030, I=0.0040, D=0.048, integrator_max=300000, integrator_min=-300000)

# release motor
set_xi_dac(32768)

# draw test waveform
moving_test_loop = 0
if moving_test_loop == 0:

    power = 1500 # 0.305mV/LSB

    xp_data1 = [0] * single_step_points
    xp_data2 = [0] * single_step_points
    
    # get xp adc data for limit 1:
    set_xi_dac(32768 - power)
    time.sleep(1)
    for i in range(single_step_points):
        xp_data1[i] = get_xp_adc()

    # get xp adc data for limit 2:
    set_xi_dac(32768 + power)
    time.sleep(1)
    for i in range(single_step_points):
        xp_data2[i] = get_xp_adc()
    
    # release motor
    set_xi_dac(32768)
    time.sleep(1)
    xp_last = get_xp_adc()
    xp_limit[0] = sum(xp_data1) / len(xp_data1)
    xp_limit[1] = sum(xp_data2) / len(xp_data2)
    
    fig = matplotlib.pyplot.figure(figsize=(7, 7))
    ax_data_bin = fig.add_subplot(1, 1, 1)
    ax_data_bin.grid(antialiased=True)
    ax_data_bin.set_ylim(0, 65636)
    ax_data_bin.set_ylabel('Data')
    ax_data_value = ax_data_bin.twinx()
    ax_data_value.set_ylim(-10.24, 10.24)
    ax_data_value.set_ylabel('V (xp)')
    ax_data_bin.plot([xp_limit[0]] * single_step_points, 'g-.')
    ax_data_bin.plot([xp_limit[1]] * single_step_points, 'b-.')
    ax_data_bin.plot(xp_data1, 'g')  
    ax_data_bin.plot(xp_data2, 'b')
    
    print 'xp range is [%d, %d]'%(xp_limit[0], xp_limit[1])
    
    # draw xp adc data histogram (test)
    #ax_data_hist = fig.add_subplot(2, 1, 2)
    #ax_data_hist.grid()
    #ax_data_hist.hist(xp_data)
    
    # write data to dac (test)
    #for i in range(255):
    #    set_xi_dac(i << 8)    

# draw pid waveform
moving_test_loop = 0
if moving_test_loop > 0: # draw all the time waveform    

    for j in range(moving_test_loop): 
        move_x_motor(pid, xp_limit[1]-2000, xi_dac[-1])
        move_x_motor(pid, xp_limit[0]+2000, xi_dac[-1])

    # release motor
    set_xi_dac(32768)

    #for j in range(xp_limit[0]+2000, xp_limit[1]-2000, 200):
    #    move_x_motor(pid, j, xi_dac[-1])

    fig = matplotlib.pyplot.figure(figsize=(7, 7))
    ax_data_bin = fig.add_subplot(1, 1, 1)
    ax_data_bin.grid(antialiased=True)
    ax_data_bin.set_ylim(0, 65636)
    ax_data_bin.set_ylabel('Data')
    ax_data_value = ax_data_bin.twinx()
    ax_data_value.set_ylim(-10.24, 10.24)
    ax_data_value.set_ylabel('V (xp)')
    ax_data_bin.plot([xp_limit[0]] * len(xi_dac_total), 'g-.')
    ax_data_bin.plot([xp_limit[1]] * len(xi_dac_total), 'g-.')
    ax_data_bin.plot(xp_data_total, 'b')
    ax_data_bin.plot(xi_dac_total, 'r')
    ax_data_bin.title.set_text('xp range is [%d, %d]'%(xp_limit[0], xp_limit[1])) 

# release motor
set_xi_dac(32768)

# show figure
matplotlib.pyplot.show()
