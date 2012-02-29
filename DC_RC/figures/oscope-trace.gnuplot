set terminal postscript eps enhanced color
set output 'oscope-trace.eps'
set title "Prototypical Oscilloscope Trace"
set xlabel "t/RC"
set ylabel "V_c(t)/V_s"
set xrange [0:5]
set yrange [-0.1:1.1]
plot x<2.5 ? 1 : 0 title "Trace A" lw 3, x<2.5 ? 1-exp(-x) : exp(-(x-2.4)) title "Trace B" lw 3
set output
