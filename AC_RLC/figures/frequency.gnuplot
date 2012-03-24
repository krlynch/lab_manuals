set terminal postscript eps enhanced color
set output 'frequency-amplitudes.eps'
set size 0.6,0.6
set title "Resistor voltage amplitude schematic"
set xlabel "{/Symbol w} [{/Symbol w}_0]"
set ylabel "V_R/V_s"
set xrange [0:3]
set yrange [0:1.1]
set key top right
vr(x,beta) = beta*x/sqrt((1-x**2)**2 + (beta*x)**2)
plot vr(x,0.25) title "2{/Symbol b}/{/Symbol w}_0 = 1/4", vr(x,0.5) title "= 1/2", vr(x,1) title "= 1", vr(x,2) title "= 2", vr(x,3) title "= 3"
set output

set output 'frequency-phase.eps'
set size 0.6,0.6
set title "Phase angle with frequency"
set xlabel "{/Symbol w} [{/Symbol w}_0]"
set ylabel "Phase [{/Symbol p}/2]"
set xrange [0:3]
#set yrange [*:*]
set yrange [-1.1:1.1]
#set key top right
phi(x,beta) = atan( (1-x**2)/(beta*x) )/(pi/2)
plot phi(x,0.25) title "2{/Symbol b}/{/Symbol w}_0 = 1/4", phi(x,0.5) title "= 1/2", phi(x,1) title "= 1", phi(x,2) title "= 2", phi(x,3) title "= 3"

set output 'frequency-cap.eps'
set size 0.6,0.6
set title "Capacitor voltage amplitude schematic"
set xlabel "{/Symbol w} [{/Symbol w}_0]"
set ylabel "V_C/V_s"
set xrange [0:3]
set yrange [*:*]
set key top right
vc(x,beta) = 1/sqrt((1-x**2)**2 + (beta*x)**2)
plot vc(x,0.25) title "2{/Symbol b}/{/Symbol w}_0 = 1/4", vc(x,0.5) title "= 1/2", vc(x,1) title "= 1", vc(x,2) title "= 2", vc(x,3) title "= 3"

set output 'frequency-ind.eps'
set size 0.6,0.6
set title "Inductor voltage amplitude schematic"
set xlabel "{/Symbol w} [{/Symbol w}_0]"
set ylabel "V_L/V_s"
set xrange [0:3]
set yrange [*:*]
set key top right
vl(x,beta) = x**2/sqrt((1-x**2)**2 + (beta*x)**2)
plot vl(x,0.25) title "2{/Symbol b}/{/Symbol w}_0 = 1/4", vl(x,0.5) title "= 1/2", vl(x,1) title "= 1", vl(x,2) title "= 2", vl(x,3) title "= 3"

set output
