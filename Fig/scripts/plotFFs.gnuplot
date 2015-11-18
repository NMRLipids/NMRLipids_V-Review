#set term postscript enhanced color  
set termoption enhanced; set encoding iso_8859_1;
set terminal postscript portrait enhanced color dashed lw 1 "Helvetica" 14 
set output "../FFs.eps"
set size 1.41, 0.5
set multiplot  layout 2,1
#set key above
set label at screen 0.18,screen 0.49 "X-ray form factors (POPC, T=303K)"
set key at screen 0.6,screen 0.48 maxcols 2 maxrows 3
set key font ",10"

set xrange [0:0.8] 
set yrange [-0.5:2.2]
set ytic 0.5
set ylabel "|F(q_z)| [e/{\305}^2]"
set xlabel "q_z [{\305}^{-1}]"
set origin 0,0
set size 0.75, 0.44
plot  "../../Data/formfactor_SAXS_MLV_Peter.dat"  using 1:2 title 'MLVs; Heftberger et al. (2014)' with line  linetype 1 lw 2 lc rgb 'black', \
      "../../Data/POPC_ULV_30C_in0D_Kucerka_2011.xff" using 1:2:3 every 50 with yerrorbars notitle pt 0 lt 1 lw 2 lc rgb 'green',\
      "" using 1:2 with line title 'ULV; Kucerka et al. (2011)' linetype 1 lw 2 lc rgb 'green', \
      "../../Data/POPC_ORI_30C_in0D_Kucerka_2006.xff" using 1:2:3 every 50 with yerrorbars notitle pt 0 lt 1 lw 2, "" using 1:2 with line title 'Oriented; Kucerka et al. (2005)'  linetype 1 lw 2

set label at screen 0.78,screen 0.49 "Neutron form factors (POPC, T=303K)"
set key at screen 1.24,screen 0.48 maxcols 2 maxrows 5
set yrange [-0.5:2.6]
set y2range [-0.5:2.6]
set xrange [0:0.35]
unset ytic 
set y2tic 0.5
set origin 0.7,0
set size 0.75, 0.44
unset ylabel
set y2label "|F(q_z)| [10^{-4}{\305}^{-1}]"
set xlabel "q_z [{\305}^{-1}]"
#set label at screen 0.95,screen 0.6 "Berger (340 mM NaCl)"
plot  "../../Data/ipts-9002_popc_ulv_100D2O_30C_scaled.nff"  using 1:($2*10000) title 'ULV; Heftberger et al. (2014)' with line linetype 1 lw 2 lc rgb 'black', \
      "../../Data/POPC_ULV_30C_in100D_kucerka2011.nff" using 1:($2*10000) with line title 'ULV; Kucerka et al. (2011)' linetype 1 lw 2 lc rgb 'green'


unset multiplot

