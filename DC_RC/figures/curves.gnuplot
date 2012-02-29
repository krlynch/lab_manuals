set terminal postscript eps enhanced color
set output 'curves.eps'
set title "Capacitor charging and discharging curves"
set xlabel "t/RC"
set ylabel "V_c(t)/V_s"
set xrange [0:5]
set multiplot
plot exp(-x) title "Discharging" lw 3, 1-exp(-x) title "Charging" lw 3
set trange [0:1]
set parametric
plot log(2),t linecolor 3 lw 3title ""
unset multiplot
set output
