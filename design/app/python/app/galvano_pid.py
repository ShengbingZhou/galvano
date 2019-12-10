# @brief:   simulation script for galvano pid
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
import cheetah_py

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
    data_out = array.array('B', [ 0x01, 0xd0, 0x14, 0x00, 0x01 ]) # adc range: +/-2.5Vref (2.5 * 4.096v)
    aardvark_py.aa_spi_write(pid.aardvark, data_out, 0)    
    data_out = array.array('B', [ 0x01, 0xc8, 0x10, 0x00, 0x00 ]) # READ_HWORD
    aardvark_py.aa_spi_write(pid.aardvark, data_out, 0)
    data_out = array.array('B', [ 0x01, 0x00, 0x00, 0x00, 0x00 ]) # nop command
    aardvark_py.aa_spi_write(pid.aardvark, data_out, data_in)

def get_xp_adc():
    data_in = aardvark_py.array_u08(5)
    data_out = array.array('B', [ 0x01, 0x00, 0x00, 0x00, 0x00 ]) # nop command
    (count, data_in) = aardvark_py.aa_spi_write(pid.aardvark, data_out, data_in)
    xp_adc_data = (data_in[1] << 8) + data_in[2]
    return xp_adc_data

def set_xi_dac(value):
    value = (value / 2) & 0xffff # cover bug: dac will shift 1 more bit when loading data
    aardvark_py.aa_spi_write(pid.aardvark, array.array('B', [ 0x02, (value >> 8), (value & 0xff) ]), 0) # 300us

def move_x_motor(pid, target, init_xidac):
    global xp_data, xi_dac, xp_data_total, xi_dac_total
    pid.set_point(target)
    for i in range(single_step_points):
        xp_data[i] = get_xp_adc()
        out = pid.update(xp_data[i])
        out = int(out) + init_xidac
        max_dac_offset = 3000 #0.337v for 1000, 3.3v for 10000
        out = (32768 + max_dac_offset) if out > (32768 + max_dac_offset) else out
        out = (32768 - max_dac_offset) if out < (32768 - max_dac_offset) else out
        xi_dac[i] = out
        set_xi_dac(xi_dac[i]) # 300us
        xp_data_total.append(xp_data[i])
        xi_dac_total.append(xi_dac[i])

class pid_control:
    def __init__(self):
        # Find all the attached devices
        (a_num, a_ports, a_ids) = aardvark_py.aa_find_devices_ext(16, 16)
        (c_num, c_ports, c_ids) = cheetah_py.ch_find_devices_ext(16, 16)
        if (a_num + c_num) > 0:
            if (a_num > 0):
                print 'Found %d aardvark emulators.'%(a_num)
                self.aardvark = aardvark_py.aa_open(a_ports[0])
                aardvark_py.aa_configure(self.aardvark,  aardvark_py.AA_CONFIG_SPI_GPIO)
                aardvark_py.aa_target_power(self.aardvark, aardvark_py.AA_TARGET_POWER_BOTH)                
                aardvark_py.aa_spi_configure(self.aardvark, 0, 0, aardvark_py.AA_SPI_BITORDER_MSB) # pol = 0, pha = 0
                aardvark_py.aa_spi_bitrate(self.aardvark, 1000) # 1Mbps
            if (c_num > 0):
                print 'Found %d cheetah emulators.'%(c_num)
        else:
            raise Exception('USB->SPI dongle not found.')

    def set_gain(self, P=0.0, I=0.0, D=0.0, integrator_max=3000, integrator_min=-3000):
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
       #self.integrator = self.integrator_max if self.integrator > self.integrator_max else self.integrator
       #self.integrator = self.integrator_min if self.integrator < self.integrator_min else self.integrator
        self.I_value    = self.Ki * (self.integrator)
        self.derivator  = self.error
        return (self.P_value + self.I_value + self.D_value)

    def set_point(self, point):
        self.setpoint = point
        self.error = 0.0 
        self.derivator = 0.0
        self.integrator = 0.0

if __name__ == '__main__':
    # instantiate pid controller
    pid = pid_control()

    # init xp adc
    init_xp_adc()

    # release motor
    set_xi_dac(0x8000)
    time.sleep(1)

    # xp data and current array
    single_step_points = 60 #points to finish single step move to target
    xp_data = [0] * single_step_points
    xi_dac  = [0] * single_step_points
    xp_data_total = []
    xi_dac_total  = []

    # draw xp adc data
    fig = matplotlib.pyplot.figure(figsize=(7, 7))
    ax_data_bin = fig.add_subplot(1, 2, 1)
    ax_data_bin.grid(antialiased=True)
    ax_data_bin.set_ylim(0, 65636)
    ax_data_bin.set_ylabel('Data')
    line_data_bin, = ax_data_bin.plot(xp_data, 'b')
    ax_data_value = ax_data_bin.twinx()                # show another Y-axis (voltage value)
    ax_data_value.set_ylim(-10.24, 10.24)
    ax_data_value.set_ylabel('V (xp)')

    # show xp adc data in realtime (test)
    #animation = matplotlib.animation.FuncAnimation(fig, update, interval=10) # show adc data waveform like oscilloscope
    #matplotlib.pyplot.show()

    # get xp adc data and show histogram (test)
    for i in range(single_step_points): 
        xp_data[i] = get_xp_adc()
    #ax_data_hist = fig.add_subplot(2, 1, 2)
    #ax_data_hist.grid()
    #ax_data_hist.hist(xp_data)

    # write data to dac (test)
    #for i in range(0xff):
    #    set_xi_dac(i << 8)

    #xp_limit = [26636, 38900]
    xp_limit = [32600, 33600]
    xp_center= (xp_limit[0] + xp_limit[1]) / 2

    # set gain
    pid.set_gain(P=0.55, I=0.95, D=0.35)

    # step0: move to center
    reste_to_center = 1
    if reste_to_center > 0:
        move_x_motor(pid, xp_center, 0x8000)

    # step1: working - pid controlled moving 
    moving_test_loop = 1
    if moving_test_loop > 0:
        for j in range(moving_test_loop):
            move_x_motor(pid, xp_center + 200, xi_dac[single_step_points - 1])
            move_x_motor(pid, xp_center - 200, xi_dac[single_step_points - 1])
            move_x_motor(pid, xp_center + 200, xi_dac[single_step_points - 1])
            move_x_motor(pid, xp_center      , xi_dac[single_step_points - 1])
            move_x_motor(pid, xp_center - 200, xi_dac[single_step_points - 1])
            move_x_motor(pid, xp_center      , xi_dac[single_step_points - 1])        
            #move_x_motor(pid, xp_center + j * 50, xi_dac[single_step_points - 1]) # line test

    # step 2: move to center before releasing motor
    restore_to_center = 1
    if restore_to_center > 0:
        move_x_motor(pid, xp_center, xi_dac[single_step_points - 1])

    # release motor
    set_xi_dac(0x8000)

    # draw x motor max/center/min line
    ax_data_bin.plot([xp_limit[0]] * single_step_points, 'g-.')
    ax_data_bin.plot([xp_center]   * single_step_points, 'g-.')
    ax_data_bin.plot([xp_limit[1]] * single_step_points, 'g-.')

    # draw xp adc track waveform
    line_data_bin.set_ydata(xp_data)

    # draw xi dac track waveform
    #ax_data_bin.plot(xi_dac, 'r') # red line

    # draw all the time waveform
    #fig = matplotlib.pyplot.figure(figsize=(7, 7))
    ax_data_bin = fig.add_subplot(1, 2, 2)
    ax_data_bin.grid(antialiased=True)
    ax_data_bin.set_ylim(0, 65636)
    ax_data_bin.set_ylabel('Data')
    ax_data_bin.plot(xp_data_total, 'b')
    ax_data_value = ax_data_bin.twinx()                # show another Y-axis (voltage value)
    ax_data_value.set_ylim(-10.24, 10.24)
    ax_data_value.set_ylabel('V (xp)')
    ax_data_bin.plot(xi_dac_total, 'r')
    ax_data_bin.plot([xp_limit[0]] * len(xi_dac_total), 'g-.')
    ax_data_bin.plot([xp_center]   * len(xi_dac_total), 'g-.')
    ax_data_bin.plot([xp_limit[1]] * len(xi_dac_total), 'g-.')
    #ax_data_bin.plot([32768]       * len(xi_dac_total), 'g')

    # show figure
    matplotlib.pyplot.show()
