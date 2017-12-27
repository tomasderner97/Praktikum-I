from uncertainties import ufloat as uf
from math import pi
from math import sqrt
from numpy import array, mean

def unc(arr, syst):
    stat = arr.std(ddof=1) / sqrt(len(arr))
    return sqrt(stat**2 + syst**2)


def out(what, howmuch):
    print("{} = {:L}".format(what, howmuch))
    print()



# ----- METODA KYVŮ -----
k_m     = uf(148    , 0.1   ) / 1000
k_l     = uf(234    , 3     ) / 1000
g       = 9.81
k_a_10T = array([
    24.54,
    24.52,
    24.43,
    24.43,
    24.45
    ])
k_a_T   = k_a_10T / 10

k_10T   = uf(mean(k_a_10T), unc(k_a_10T, 0.01))

k_T     = uf(mean(k_a_T),   unc(k_a_T, 0.001) )
out("k_10T", k_10T)
out("k_T", k_T)

k_I     = k_m * k_l * ( (g * k_T**2) / (4 * pi**2) - k_l )

out("I", k_I)

# ----- METODA OTÁČENÍ -----
o_a_m = array([
    11.9572,
    16.8991,
    24.6959,
    34.3715,
    49.1044
    ]) + 0.5063/2

for n, i in enumerate(o_a_m):
    print("m_{} = {:.1f}".format(n, i))

print()

# hodnoty jsou prumery
o_a_r = array([
     5.980,
     9.965,
    13.950,
    18.010 - 2*0.065
    ]) / 2

for n, i in enumerate(o_a_r):
    print("r_{} = {:.2f}".format(n, i))

print()

