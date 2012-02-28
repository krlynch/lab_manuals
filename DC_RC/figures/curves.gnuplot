set terminal pdf
set output 'curves.pdf'
set title "Capacitor charging and discharging curves"
set xlabel "t/RC"
set ylabel "V_c(t)/V_s"
plot [0:5] exp(-x) title "Discharging", 1-exp(-x) title "Charging"
set output
