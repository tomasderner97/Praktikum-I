set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'Epsilon'
set ylabel 'Sigma [Pa]'

set border lw 3

set key left top

f(x) = a*x + b
a = 1e10
b = 1

set output "drat.png"
fit f(x) 'data_drat.txt' using 1:2 via a, b 
plot [:] [:] 'data_drat.txt' using 1:2 lw 17 lc rgb "black" title "data", f(x) lw 3 lc rgb "black" title "fit"

set output
