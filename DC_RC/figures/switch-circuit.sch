v 20130925 2
C 45600 48400 1 0 0 resistor-1.sym
{
T 45900 48800 5 10 0 0 0 0 1
device=RESISTOR
T 45800 48700 5 10 1 1 0 0 1
refdes=R1
}
C 47000 48300 1 0 0 capacitor-1.sym
{
T 47200 49000 5 10 0 0 0 0 1
device=CAPACITOR
T 47200 48800 5 10 1 1 0 0 1
refdes=C1
T 47200 49200 5 10 0 0 0 0 1
symversion=0.1
}
C 45100 48300 1 0 1 switch-spdt-1.sym
{
T 44700 49100 5 10 0 0 0 6 1
device=SPDT
T 44800 48000 5 10 1 1 0 6 1
refdes=Switch
}
C 45600 49300 1 0 0 voltage-3.sym
{
T 45800 50000 5 8 0 0 0 0 1
device=VOLTAGE_SOURCE
T 45600 49800 5 10 1 1 0 0 1
refdes=DC Supply
}
N 45600 49500 43700 49500 4
N 43700 49500 43700 48700 4
N 43700 48700 44200 48700 4
N 44200 48300 43700 48300 4
N 43700 48300 43700 47500 4
N 43700 47500 48400 47500 4
N 48400 47500 48400 49500 4
N 48400 48500 47900 48500 4
N 46500 49500 48400 49500 4
N 47000 48500 46500 48500 4
N 45600 48500 45100 48500 4