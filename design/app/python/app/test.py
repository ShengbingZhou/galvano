import numpy as np
import matplotlib.pyplot as plt
import matplotlib.animation as ani

data = np.random.uniform(0, 50, 1000)
fig = plt.figure(figsize=(7, 7))
ax = fig.add_subplot(1, 1, 1)
ax.set_ylim(0, 50)
line, = ax.plot(data)

def update(frame_number):
    global data
    data1 = np.concatenate((data[1:], np.random.uniform(0, 50, 1)), axis=None)    
    data = data1
    line.set_ydata(data)

animation = ani.FuncAnimation(fig, update, interval=10)
plt.show()