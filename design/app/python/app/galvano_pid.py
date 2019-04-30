# @file:    simulation script for galvano pid
# @version: v0.0.1
# @author:  shengbingzhou@outlook.com

import sys
import array
import numpy
import scipy
import scipy.signal
import matplotlib.pyplot
import matplotlib.animation
import aardvark_py

def update(frame_number):
    global data_in, xp_data, line, xp_data_cnt
    data_out = array.array('B', [ 0x00, 0x00, 0x00, 0x00 ]) # nop command
    (count, data_in) = aardvark_py.aa_spi_write(pid.aardvark, data_out, data_in)
    new_data = (data_in[0] << 8) + data_in[1]
    #new_data = numpy.random.uniform(0, 5000, 1)
    xp_data = numpy.concatenate((xp_data[1:], new_data), axis=None)
    line.set_ydata(xp_data)
    xp_data_cnt = xp_data_cnt + 1
    if (xp_data_cnt == len(xp_data)): # show FFT
        fft(xp_data)

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
        
class PidControl:
    def __init__(self, P=2.0, I=0.0, D=1.0, Derivator=0, Integrator=0, Integrator_max=500, Integrator_min=-500):
        self.Kp = P
        self.Ki = I
        self.Kd = D
        self.Derivator  = Derivator
        self.Integrator = Integrator
        self.Integrator_max = Integrator_max
        self.Integrator_min = Integrator_min
        self.set_point = 0.0
        self.error = 0.0  

        # Find all the attached devices
        (num, ports, unique_ids) = aardvark_py.aa_find_devices_ext(16, 16)        
        if num > 0:
            print 'Found %d aardvark emulator.'%(num)
            self.aardvark = aardvark_py.aa_open(ports[0])
            aardvark_py.aa_configure(self.aardvark,  aardvark_py.AA_CONFIG_SPI_GPIO)
            aardvark_py.aa_target_power(self.aardvark, aardvark_py.AA_TARGET_POWER_BOTH)
            aardvark_py.aa_spi_configure(self.aardvark, aardvark_py.AA_SPI_POL_FALLING_RISING, aardvark_py.AA_SPI_PHASE_SETUP_SAMPLE, aardvark_py.AA_SPI_BITORDER_MSB)
            aardvark_py.aa_spi_bitrate(self.aardvark, 1000) #1Mbps
        else:
            raise Exception('Aardvark dongle not found.')

    def update(self,current_value):
        self.error      = self.set_point - current_value
        self.P_value    = self.Kp * self.error
        self.D_value    = self.Kd * ( self.error - self.Derivator)
        self.Derivator  = self.error
        self.Integrator = self.Integrator + self.error
        if self.Integrator > self.Integrator_max:
            self.Integrator = self.Integrator_max
        elif self.Integrator < self.Integrator_min:
            self.Integrator = self.Integrator_min
        self.I_value = self.Integrator * self.Ki
        return self.P_value + self.I_value + self.D_value

    def setPoint(self,set_point):
        self.set_point  = set_point
        self.Integrator = 0
        self.Derivator  = 0

pid = PidControl()
        
# read device id    
data_in = aardvark_py.array_u08(4)    
data_out = array.array('B', [ 0x48, 0x10, 0x00, 0x00 ])
    
# setup xp adc
data_out = array.array('B', [ 0xd0, 0x0c, 0x00, 0x00 ])
aardvark_py.aa_spi_write(pid.aardvark, data_out, 0)
data_out = array.array('B', [ 0xd0, 0x10, 0x00, 0x00 ])
aardvark_py.aa_spi_write(pid.aardvark, data_out, 0)
data_out = array.array('B', [ 0xd0, 0x14, 0x00, 0x01 ])
aardvark_py.aa_spi_write(pid.aardvark, data_out, 0)    
data_out = array.array('B', [ 0xc8, 0x10, 0x00, 0x00 ])
aardvark_py.aa_spi_write(pid.aardvark, data_out, 0)

# read xp adc
xp_data = [0] * 1000
xp_data_cnt = 0

# draw data
fig = matplotlib.pyplot.figure(figsize=(7, 7))
ax = fig.add_subplot(1, 1, 1)
ax.set_ylim(0, 65535)
ax.set_ylabel('Data')
line, = ax.plot(xp_data, 'g')
ax2 = ax.twinx()
ax2.set_ylim(-10.24, 10.24)
ax2.set_ylabel('Value')

matplotlib.pyplot.grid()
animation = matplotlib.animation.FuncAnimation(fig, update, interval=10)
matplotlib.pyplot.show()

# pid algorithm
pid.setPoint(200)
#for i in range(100):
    #out = pid.update(i) # update current value