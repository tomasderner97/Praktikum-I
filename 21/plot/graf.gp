set terminal postscript eps enhanced font "Helvetica,16"
set output "graf.eps"
set encoding utf8

set xlabel 'Vzdalenost cocky od blizsiho britu [mm]'
set ylabel 'Perioda kmitani [s]'

set key left top

f(x) = k*x + q
g(x) = m*x + n

fit f(x) 'periody.dat' using 1:2 via k,q
fit g(x) 'periody.dat' using 1:3 via m,n
plot [:] [15.85:16.4] 'periody.dat' using 1:2 pt 4 ps 1.3 title "dole", f(x) lw 2 title "fit dole", '' using 1:3 pt 6 ps 1.3 title "nahore", g(x) lw 2 title "fit nahore"

set output
