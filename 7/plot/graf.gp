set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'Vzdálenost l [mm]'
set ylabel 'Stupeň vazby'

set border lw 3

set key left top

f(x) = a*x*x + b*x + c

set output "graf.png"
fit f(x) 'data.txt' using 1:2:3 yerrors via a, b, c 
plot [17:27] [0.04:0.11] 'data.txt' using 1:2:3 lw 3 lc rgb "black" title "data" with yerrorbars, f(x) lw 3 lc rgb "black" title "fit"

set output
