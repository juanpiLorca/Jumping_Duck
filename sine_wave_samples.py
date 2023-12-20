import numpy as np 
import matplotlib.pyplot as plt 

samples = 256
Amp = 255
DC = Amp / 2

t = np.linspace(0, samples, samples)
f = 1 # 1 [Hz]
sineWave = np.sin(2*np.pi*f*t)
sineWave = (Amp / 2) * sineWave + DC

plt.plot(t, sineWave)
plt.show()

txtFile = f"{samples}_sine_wave_samples.txt"
coe_content = "memory_initialization_radix=16;\n"
coe_content += "memory_initialization_vector=\n"

with open(txtFile, "w") as file: 
    file.write(coe_content)
    for sample in sineWave: 
        n = int(sample)
        file.write(format(n, "02X")+"\n")

# E = 329.63 [Hz], B = 246.94 [Hz], C#m = 277.18 [Hz], A = 220 [Hz], G#m = 415.30 [Hz]
frequencies = [330, 247, 277, 220, 
              330, 247, 415, 220,
              330, 247, 277, 220, 
              330, 247, 415, 220, 
              330, 247, 277, 220, 
              330, 247, 415, 220, 
              330, 247, 277, 220, 
              330, 247, 415, 220, 
              330, 247, 277, 220, 
              330, 247, 415, 220]

freqFile = "frequencies.txt"
with open(freqFile, "w") as file: 
    file.write(coe_content)
    for freq in frequencies: 
        n = int(freq)
        file.write(format(n, "05X")+"\n")


