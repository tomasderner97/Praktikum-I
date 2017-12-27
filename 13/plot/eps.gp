set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 't [s]'
set ylabel 'Omega [1/s]'

set border lw 3

set key left top

set output "out.png"

f(x) = a*x + b
g(x) = c*x + d
h(x) = m*x + n

fit f(x) '100B.txt' using 1:2 via a, b 
fit g(x) '140E.txt' using 1:2 via c, d 
fit h(x) '180C.txt' using 1:2 via m, n 

plot [0:8] [0:6] '100B.txt' using 1:2 lt 7 lw 3 lc rgb "#007f7f7f" title "r_2, m_B", \
     f(x) lw 3 lc rgb "black" title "fit r_2, m_B", \
     '140E.txt' using 1:2 lt 6 lw 1 lc rgb "black" title "r_3, m_E", \
     g(x) dashtype 4 lw 3 lc rgb "black" title "fit r_3, m_E", \
     '180C.txt' using 1:2 lw 1 lc rgb "#007f7f7f" title "r_4, m_C", \
     h(x) dashtype 2 lw 3 lc rgb "black" title "fit r_4, m_C"

set output
