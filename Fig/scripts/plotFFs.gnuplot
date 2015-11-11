#set term postscript enhanced color  
set termoption enhanced; set encoding iso_8859_1;
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "../FFs.eps"
set size 1.4, 0.5
set multiplot  layout 2,1
#set key above
set label at screen 0.18,screen 0.45 "X-ray form factors (POPC, T=303K)"
set key at screen 0.6,screen 0.43 maxcols 1 maxrows 8
set key font ",13"

set xrange [0:0.8] 
set yrange [-0.5:2.5]
set ytic 0.5
set ylabel "|F(q_z)| [e/{\305}^2]"
set xlabel "q_z [{\305}^{-1}]"
set origin 0,0
set size 0.65, 0.35
plot "../../Data/formfactor_SAXS_MLV_Peter.dat"  using 1:2 title 'MLVs; Heftberger et al. 2014' with linespoints  linetype 1 pt 7 lc rgb 'black', \
     "../../Data/POPC_ORI_30C_in0D_Kucerka_2006.xff" using 1:2:3 with yerrorbars notitle pt 5 lt 1, "" using 1:2 with linespoint title 'Oriented; Kucerka et al. 2006' pt 5 linetype 1, \
     "../../Data/POPC_ULV_30C_in0D_Kucerka_2011.xff" using 1:2:3 with yerrorbars notitle pt 5 lt 1, "" using 1:2 with linespoint title 'ULV; Kucerka et al. 2011' pt 5 linetype 1 lc rgb 'green'


set label at screen 0.84,screen 0.45 "Neutron form factors (POPC, T=303K)"
set key at screen 1.3,screen 0.43 maxcols 2 maxrows 5
#set yrange [-3:-7]
set xrange [0:0.4]
set ytic 0.5
set origin 0.7,0
set size 0.65, 0.35
set ylabel "|F(q_z)| [10^{-4}{\305}^{-1}]"
set xlabel "q_z [{\305}^{-1}]"
#set label at screen 0.95,screen 0.6 "Berger (340 mM NaCl)"
plot  "../../Data/ipts-9002_popc_ulv_100D2O_30C_scaled.nff"  using 1:($2*10000) title 'ULV; Heftberger et al. 2014' with linespoints  linetype 1 pt 7 lc rgb 'black', \
      "../../Data/POPC_ULV_30C_in100D_kucerka2011.nff" using 1:($2*10000):3 with yerrorbars notitle pt 5 lt 1, "" using 1:($2*10000) with linespoint title 'ULV; Kucerka et al. 2011' pt 5 linetype 1 lc rgb 'green'


unset multiplot

