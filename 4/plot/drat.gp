set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'c [%]'
set ylabel 'Sigma [Pa]'

set border lw 3

#set key left top

f(x) = a*exp(b*x) + c
a = 1
b = -1
c = 0
set output "out.png"
fit f(x) 'data.txt' using 1:2 via a, b, c
plot [:] [:] 'data.txt' using 1:2 lw 17 lc rgb "black" title "data", f(x) lw 3 lc rgb "black" title "fit"

#plot [:] [:] 'data.txt' using 1:2 lw 17 lc rgb "black" title "data"

set output
