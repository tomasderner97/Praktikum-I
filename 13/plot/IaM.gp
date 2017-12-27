set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'I^* [kg m^2]'
set ylabel 'Alfa [s^2]'

set border lw 3

set key left top

f(x) = a*x + b


set output "IaM.png"
fit f(x) 'IaM.txt' using 1:2 via a, b 
plot [:] [:] 'IaM.txt' using 1:2:3 lw 3 lc rgb "black" title "data" with yerrorbars, f(x) lw 3 lc rgb "black" title "fit"

set output
