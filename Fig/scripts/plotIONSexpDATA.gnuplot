#set term postscript enhanced color  
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "../OrderParameterIONSexp.eps"
#set size 1.0, 0.4
set multiplot  layout 2,1
set yrange [-0.053:-0.028]
set xrange [-1:1001] 
set ytic 0.01
set key above

set ylabel "{/Symbol b}  S_{CD}"
plot "/home/ollilas1/Dropbox/HGmodel/SHARE/POPCions/POPCnacl/betaORDPnaCONSexp.dat"  using 1:((-1)*$2) title 'NaCl' with linespoints  linetype 51 pt 9 lc rgb 'black', \
     "../../../lipid_ionINTERACTION/Data/DPPC/CaCl/EXP-Akutsu1981-T332K.dat"  using 1:((-1)*$2*0.00784) title 'CaCl' with linespoints  linetype 3 pt 5 lc rgb 'black'

set yrange [-0.01:0.05]
set ylabel "{/Symbol a}  S_{CD}"
set xlabel "[ions] (mM)"
plot "/home/ollilas1/Dropbox/HGmodel/SHARE/POPCions/POPCnacl/alphaORDPnaCONSexp.dat"  using 1:2 notitle with linespoints  linetype 51 pt 9 lc rgb 'black', \
     "../../../lipid_ionINTERACTION/Data/DPPC/CaCl/EXP-Akutsu1981-T332K.dat"  using 1:($3*0.00784) notitle with linespoints  linetype 3 pt 5 lc rgb 'black'

unset multiplot

