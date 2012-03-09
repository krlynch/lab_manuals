set terminal postscript eps enhanced color
set output 'frequency-amplitudes.eps'
set title "Voltage/current phase difference schematic"
set xlabel "{/Symbol w} [1/RC]"
set ylabel "V(t)/V_s"
set xrange [0:5]
set key left top
vr(x) = x**2/(1+x**2)
vc(x) = x/(1+x**2)
plot vr(x) title "V_R(t)", vc(x) title "V_C(t)"
set output

set output 'frequency-phase.eps'
set title "Phase angle with frequency"
set xlabel "{/Symbol w} [1/RC]"
set ylabel "Phase [{/Symbol p}/2]"
set xrange [0:3]
#set yrange [*:*]
set yrange [0:1]
set key top right
plot atan(1/x)*2/pi title "{/Symbol f}"
set output
