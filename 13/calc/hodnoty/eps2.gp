set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel ''
set ylabel ''

set border lw 3

set key left top

f(x) = a*x + b


set output "eps2.png"
fit f(x) 'TO 60 mm & E.txt' using 1:2 via a, b 
plot [:] [:] 'TO 60 mm & E.txt' using 1:2 lw 17 lc rgb "black" title "data", f(x) lw 3 lc rgb "black" title "fit"

set output
