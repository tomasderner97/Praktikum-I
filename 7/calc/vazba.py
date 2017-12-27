from uncertainties import ufloat
import numpy as np
from math import pi

t_1 = np.array([
    ufloat(1.87, 0.01),
    ufloat(1.87, 0.01),
    ufloat(1.87, 0.01),
    ufloat(1.87, 0.01),
    ufloat(1.88, 0.01)
])
t_2 = np.array([
    ufloat(1.70, 0.01),
    ufloat(1.74, 0.02),
    ufloat(1.75, 0.01),
    ufloat(1.77, 0.01),
    ufloat(1.78, 0.01),
])

omega_1 = 2 * pi / t_1
omega_2 = 2 * pi / t_2

kappa = (omega_2**2 - omega_1**2) / (omega_2**2 + omega_1**2)
print(kappa)
