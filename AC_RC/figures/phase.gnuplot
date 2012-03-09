set terminal postscript eps enhanced color
set output 'phase.eps'
set size 0.6,0.6
set title "Voltage/current phase difference schematic"
set xlabel "t [1/{/Symbol w}]"
set ylabel "Value"
set xrange [0:3]
set yrange [-1.2:1.2]
plot cos(2*pi*x) title "V_s(t)", 0.8*cos(2*pi*x+0.5) title "I(t)"
set output
