set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'Relativní deformace'
set ylabel 'Smluvní napětí [Pa]'

set border lw 3

set key left top

f(x) = 2.29906e+09*x
g(x) = 2.29906e+09*(x-0.002)

set output "graf.png"
plot [-2.14E-05:1.28E-02] [9.11E+03:1.79E+07] "epsilon_sigma.dat" with lines lw 3 lc rgb "black" title "data", f(x) lw 2 lc rgb "black" title "fit sigma U", g(x) lw 3 lc rgb "grey" title "fit sigma 0,2"

set output
