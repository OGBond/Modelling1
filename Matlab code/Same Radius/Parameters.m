gamma = 7e-2; % surface tension constant N/m
l = 5e-6; % distance between fibre centres in m
R = l/2; % radius of fibres
rho = 997; % water density kg/m^3
Hmin = 0; 
Hmax = 0.1; % water thickness
n = 100; % number of points
H = linspace(Hmin,Hmax,n);
g= 9.8; % gravitational constant m/s
p=rho*g*H; % pressure at interface

theta = pi/3; % contact angle for specific fibre/water/meniscus interface

alpha = linspace(-pi/2, -0.01*pi, 100);
R_m = (l/2 - R*cos(alpha))./(-cos(alpha-theta));
 plot(alpha,R_m)
 shg