# Setting --------------------
reset
set nokey
set term gif animate delay 6 size 1280,720
set output 'universal_gravitation.gif'
unset grid
a = 1.5e7
b = 1e7
c = 2e7
set xr[-c:b]
set yr[-a:a]
set size ratio 2*a/(L+b)   # width:c+b, height:2a

# Parameter --------------------
G = 6.674 * 1e-11                       # Gravitational constant [m3/(kg s2)]
R = 6.371 * 1e6                         # Radius of earth [m]
M = 5.972 * 1e24                        # Weight of earth [kg]
r = 1.737 * 1e6                         # Radius of moon [m]
m = 7.348 * 1e22                        # Weight of moon [kg]

dt = 10                                 # Time step [s]
v2 = sqrt(2*G*M/R)                      # Second cosmic velocity

dx = dt/6.0                             # Coefficient for Runge-Kutta 4th
dt2 = dt/2

lim1 = 10                               # Stop time
lim2 = 5000                             # Time limit

dis  = 200                              # Start to disappear
cut  = 10                               # Decimation

# Function --------------------
r(x, y, z, w)  = (sqrt(x**2 + z**2))**3 # Runge-Kuta 4th
f1(x, y, z, w) = y
f2(x, y, z, w) = -G * M * x / r(x, y, z, w)
f3(x, y, z, w) = w
f4(x, y, z, w) = -G * M * z / r(x, y, z, w)

Time(t) = sprintf("{/Times:Italic t} = %d [s]", t) # Time

# Plot --------------------
# Initiate value
x1 = 5e6                                 # x
x2 = 0.                                  # vx
x3 = 0.                                  # y
x4 = v2                                  # vy
t = 0.                                   # Time

# Draw initiate state for lim1 steps
do for [i = 1:lim1] {
    # Time
    set title Time(t) font 'Times:Normal, 22'

    # Earth
    set object 1 circle at 0, 0 fc rgb 'skyblue' size R/5 fs solid

    # Moon
    set object 2 circle at x1, x3 fc rgb 'grey40' size r/5 fs solid

    plot 1/0
}

# Update for lim2 steps
do for [i = 1:lim2] {
    t = t + dt

    # Calculate using Runge-Kutta 4th
    k11 = f1(x1, x2, x3, x4)
    k12 = f2(x1, x2, x3, x4)
    k13 = f3(x1, x2, x3, x4)
    k14 = f4(x1, x2, x3, x4)
    k21 = f1(x1 + dt2 * k11, x2 + dt2 * k12, x3 + dt2 * k13, x4 + dt2 * k14)
    k22 = f2(x1 + dt2 * k11, x2 + dt2 * k12, x3 + dt2 * k13, x4 + dt2 * k14)
    k23 = f3(x1 + dt2 * k11, x2 + dt2 * k12, x3 + dt2 * k13, x4 + dt2 * k14)
    k24 = f4(x1 + dt2 * k11, x2 + dt2 * k12, x3 + dt2 * k13, x4 + dt2 * k14)
    k31 = f1(x1 + dt2 * k21, x2 + dt2 * k22, x3 + dt2 * k23, x4 + dt2 * k24)
    k32 = f2(x1 + dt2 * k21, x2 + dt2 * k22, x3 + dt2 * k23, x4 + dt2 * k24)
    k33 = f3(x1 + dt2 * k21, x2 + dt2 * k22, x3 + dt2 * k23, x4 + dt2 * k24)
    k34 = f4(x1 + dt2 * k21, x2 + dt2 * k22, x3 + dt2 * k23, x4 + dt2 * k24)
    k41 = f1(x1 + dt * k31, x2 + dt * k32, x3 + dt * k33, x4 + dt * k34)
    k42 = f2(x1 + dt * k31, x2 + dt * k32, x3 + dt * k33, x4 + dt * k34)
    k43 = f3(x1 + dt * k31, x2 + dt * k32, x3 + dt * k33, x4 + dt * k34)
    k44 = f4(x1 + dt * k31, x2 + dt * k32, x3 + dt * k33, x4 + dt * k34)

    x1 = x1 + dx * (k11 + 2*k21 + 2*k31 + k41)
    x2 = x2 + dx * (k12 + 2*k22 + 2*k32 + k42)
    x3 = x3 + dx * (k13 + 2*k23 + 2*k33 + k43)
    x4 = x4 + dx * (k14 + 2*k24 + 2*k34 + k44)

    # Moon
    set object i+2 circle at x1, x3 fc rgb 'grey30' size r/5 fs solid
    set label 3 at x1, x3+r/5*1.3
    set object i+1 circle size r/1e5 fs solid

    # Remove old objects
    if(i>dis){
        unset object i+1-dis
    }

    # Time
    set title Time(t)

    # Decimate and plot
    if(i%cut==0){
        plot 1/0
    }
}

set out