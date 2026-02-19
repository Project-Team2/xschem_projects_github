from PySpice.Spice.NgSpice.Shared import NgSpiceShared
import matplotlib.pyplot as plt
import numpy as np

ng = NgSpiceShared.new_instance()
ng.load('../../.xschem/simulations/sram_run.raw')

time = ng.vector('time')
BL   = ng.vector('v(bl)')
WL   = ng.vector('v(wl)')

plt.plot(time, BL, label='BL')
plt.plot(time, WL, label='WL')
plt.xlabel('Time (s)')
plt.ylabel('Voltage (V)')
plt.legend()
plt.show()

#Extract value at a specific time:

t_target = 2.56245e-6
idx = np.argmin(np.abs(time - t_target))
print("BL =", BL[idx])