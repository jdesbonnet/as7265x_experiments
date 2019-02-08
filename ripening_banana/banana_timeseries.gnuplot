set title "Reflectance spectrum of ripening banana time series (from pre-ripe to over ripe)\n(Measured with AS7265x sensor triad. Illumination source: UV, white, NIR LED)" 

set xlabel "Time"
set ylabel "Factory calibrated ADC counts"

set xdata time
set timefmt "%s"


use_relative=1

c0= (use_relative ? 2455.65 : 1)
c1= (use_relative ?  368.15 : 1)
c2= (use_relative ?  390.67 : 1)
c3= (use_relative ?  275.43 : 1)
c4= (use_relative ?  624.86 : 1)
c5= (use_relative ? 1881.24 : 1)
c6= (use_relative ?  655.43 : 1)
c7= (use_relative ?  646.09 : 1)
c8= (use_relative ?  259.29 : 1)
c9= (use_relative ?  116.63 : 1)
c10=(use_relative ?  458.58 : 1)
c11=(use_relative ?  178.17 : 1)
c12=(use_relative ?  598.39 : 1)
c13=(use_relative ?  183.33 : 1)
c14=(use_relative ?  280.45 : 1)
c15=(use_relative ?  218.54 : 1)
c16=(use_relative ?  502.70 : 1)
c17=(use_relative ? 1172.90 : 1)

set grid

datafile="banana_timeseries.dat"

#set terminal pngcairo size 1024,800
#set output "banana.png"

plot \
  datafile \
     using 1:($21/c0) with linespoints title 'AS72651 R 610nm' linecolor rgb "#ff08900", \
  '' using 1:($22/c1) with linespoints title 'AS72651 S 680nm' linecolor rgb '#ff0000', \
  '' using 1:($23/c2) with linespoints title 'AS72651 T 730nm' linecolor rgb '#bc0000', \
  '' using 1:($24/c3) with linespoints title 'AS72651 U 760nm' linecolor rgb '#790000', \
  '' using 1:($25/c4) with linespoints title 'AS72651 V 810nm' linecolor rgb '#000000', \
  '' using 1:($26/c5) with linespoints title 'AS72651 W 860nm' linecolor rgb '#000000', \
  '' using 1:($27/c6) with linespoints title 'AS72652 G 560nm' linecolor rgb '#bcff00', \
  '' using 1:($28/c7) with linespoints title 'AS72652 H 585nm' linecolor rgb '#ffeb00', \
  '' using 1:($29/c8) with linespoints title 'AS72652 I 645nm' linecolor rgb '#ff0000', \
  '' using 1:($30/c9) with linespoints title 'AS72652 J 705nm' linecolor rgb '#f30000', \
  '' using 1:($31/c10) with linespoints title 'AS72652 K 900nm' linecolor rgb '#000000', \
  '' using 1:($32/c11) with linespoints title 'AS72652 L 940nm' linecolor rgb '#000000', \
  '' using 1:($33/c12) with linespoints title 'AS72653 A 410nm' linecolor rgb '#6900d2', \
  '' using 1:($34/c13) with linespoints title 'AS72653 B 435nm' linecolor rgb '#1500ff', \
  '' using 1:($35/c14) with linespoints title 'AS72653 C 460nm' linecolor rgb '#0066ff', \
  '' using 1:($36/c15) with linespoints title 'AS72653 D 485nm' linecolor rgb '#00e5ff', \
  '' using 1:($37/c16) with linespoints title 'AS72653 E 510nm' linecolor rgb '#00ff00', \
  '' using 1:($38/c17) with linespoints title 'AS72653 F 535nm' linecolor rgb '#5bff00'

pause -1
