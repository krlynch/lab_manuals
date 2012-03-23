set terminal postscript eps enhanced color
#set size 0.6,0.6
set title "V_s(t)/V_R(t) Lissajous Figures"
set parametric
set size square
set dummy t
set xrange[-1.2:1.2]
set yrange[-1.2:1.2]
set xlabel "V_s(t)/V_s"
set ylabel "V_R(t)/V_s"

set output 'lissajous-90.eps'
vs(t) = cos(t)
vr(t) = 0.75*cos(t-pi/2)
plot vs(t), vr(t) title ""

set output "lissajous-45.eps
vr(t) = 0.75*cos(t-pi/4)
plot vs(t), vr(t) title ""

set output "lissajous-1.eps
vr(t) = 0.75*cos(t-pi/180)
plot vs(t), vr(t) title ""

set output
