set terminal postscript eps enhanced color
set output 'frequency-amplitudes.eps'
set size 0.6,0.6
set title "Voltage/current phase difference schematic"
set xlabel "{/Symbol w} [1/RC]"
set ylabel "V(t)/V_s"
set xrange [0:5]
set key center right
vr(x) = x/sqrt(1+x**2)
vc(x) = 1/sqrt(1+x**2)
plot vr(x) title "V_R(t)", vc(x) title "V_C(t)"
set output

set output 'frequency-phase.eps'
set size 0.6,0.6
set title "Phase angle with frequency"
set xlabel "{/Symbol w} [1/RC]"
set ylabel "Phase [{/Symbol p}/2]"
set xrange [0:3]
#set yrange [*:*]
set yrange [0:1]
set key top right
plot atan(1/x)*2/pi title "{/Symbol f}"
set output
