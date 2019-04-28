# @file:    simulation script for galvano pid
# @version: v0.0.1
# @author:  shengbingzhou@outlook.com

import sys
import numpy
import matplotlib.pyplot
import matplotlib.animation
import aardvark_py

def main():
    pid = PidControl()
    pid.setPoint(200)
    #for i in range(100):
        #out = pid.update(i) # update current value

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
            aardvark_py.aa_spi_configure(self.aardvark, aardvark_py.AA_SPI_POL_RISING_FALLING, aardvark_py.AA_SPI_PHASE_SAMPLE_SETUP, aardvark_py.AA_SPI_BITORDER_MSB)
            aardvark_py.aa_spi_bitrate(self.aardvark, 1000) #1Mbps

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

if __name__ == '__main__':
    main()
