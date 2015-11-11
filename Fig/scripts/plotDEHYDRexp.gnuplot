#set term postscript enhanced color  
set size 1, 1.2
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
#set terminal png enhanced color dashed lw 1 "Helvetica" 14 
#set terminal png size 555,880 enhanced font "Helvetica,20"
set output "../OrderParameterDEHYDexp.eps"
set multiplot  layout 2,1
#set size 1.0, 0.25
set yrange [-0.01:0.19]
set xrange [3:61] reverse
set ytic 0.01
#set key box
#set key above
set key at screen 0.6,screen 1.14 maxcols 2 maxrows 3
set label at screen 0.29,screen 1.055 "^1 Dvinskikh et al. PCCP 7, 3255 (2005)" 
set label at screen 0.29,screen 1.03 "^2 Ulrich et al. Biophys. J. 66, 1441 (1994)" 
set label at screen 0.29,screen 1.005 "^3 Bechinger et al. Chem. Phys. Lipids 58 1 (1991)" 

set ylabel "{/Symbol b}  S_{CH}"
set yrange [-0.045:-0.005]
plot "../../Data/betaORDPhydrEXP.dat"  using 1:((-1)*$2) title 'Exp. (DMPC ^1^3C T=314 K)^1' with linespoints  linetype 2 pt 6 lc rgb 'black', \
     "../../Data/betaORDPhydrULRICH94.dat"  using 1:((-1)*$2) title 'Exp. (DOPC ^2H T=303 K)^2' with linespoints  linetype 2 pt 4 lc rgb 'black', \
     "../../Data/betaORDPhydrBECHINGER91.dat"  using 1:((-1)*$2) title 'Exp. (POPC ^2H T=296 K)^3' with linespoints  linetype 2 pt 8 lc rgb 'black'

set ylabel "{/Symbol a}  S_{CH}"
set xlabel "n_{w/l}"
set yrange [0.04:0.1]
plot "../../Data/alphaORDPhydrEXP.dat"  using 1:2 notitle with linespoints  linetype 2 pt 6 lc rgb 'black', \
     "../../Data/alphaORDPhydrULRICH94.dat"  using 1:2 notitle with linespoints  linetype 2 pt 4 lc rgb 'black', \
     "../../Data/alphaORDPhydrBECHINGER91.dat"  using 1:2 notitle with linespoints  linetype 2 pt 8 lc rgb 'black'




unset multiplot

