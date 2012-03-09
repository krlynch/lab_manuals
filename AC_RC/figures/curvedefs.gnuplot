set terminal postscript eps enhanced color
set output 'curvedefs.eps'
set size 0.6,0.6
set title "Definition of zero crossings"
set xlabel "t [1/{/Symbol w}]"
set ylabel "V(t)/V_s"
set xrange [0:2]
set yrange [-1.2:1.2]
set label 10 "A_1" at 0.55, 0.15
set label 11 "B_1" at 0.77, -0.12
set label 12 "A_2" at 1.1, -0.15
set label 13 "B_2" at 1.27, 0.12
set label 14 "A_3" at 1.55, 0.15

plot cos(2*pi*x) title "V_s(t)", 0.6*cos(2*pi*x+0.5) title "V_R(t)", 0 title ""
set output
