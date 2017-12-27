set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'F l^3'
set ylabel '4yab^3'

set border lw 3

set key left top

f(x) = a*x + b
a = 1e10
b = 1

set output "tramek_mosaz.png"
fit f(x) 'tramek_mosaz.txt' using 1:2 via a, b 
plot [:] [:] 'tramek_mosaz.txt' using 1:2 lw 17 lc rgb "black" title "data", f(x) lw 3 lc rgb "black" title "fit"

set output
