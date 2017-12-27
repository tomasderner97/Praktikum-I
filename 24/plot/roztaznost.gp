set terminal pngcairo enhanced size 2000,1300 font 'Helvetica,36'  
set encoding utf8

set xlabel 'Teplota [°C]'
set ylabel 'Změna délky [mm]'

set border lw 3

set key left top

f(x) = k*x + q

set output "roztaznost_mosaz2.png"
fit f(x) 'roztaznost.dat' using 1:2 via k,q
plot [18:62] [:] 'roztaznost.dat' using 1:2:6 lw 3 lc rgb "black" title "mosaz" with yerrorbars, f(x) lw 3 lc rgb "black" title "fit mosaz"

set output "roztaznost_med.png"
fit f(x) 'roztaznost.dat' using 1:3 via k,q
plot [18:62] [:] 'roztaznost.dat' using 1:3:6 lw 3 lc rgb "black" title "měď" with yerrorbars, f(x) lw 3 lc rgb "black" title "fit měď"

set output "roztaznost_ocel.png"
fit f(x) 'roztaznost.dat' using 1:4 via k,q
plot [18:62] [:] 'roztaznost.dat' using 1:4:6 lw 3 lc rgb "black" title "ocel" with yerrorbars, f(x) lw 3 lc rgb "black" title "fit ocel"

set output "roztaznost_hlinik.png"
fit f(x) 'roztaznost.dat' using 1:5 via k,q
plot [18:62] [:] 'roztaznost.dat' using 1:5:6 lw 3 lc rgb "black" title "hliník" with yerrorbars, f(x) lw 3 lc rgb "black" title "fit hliník"

set output
