gamma = 70e-3; % surface tension constant N/m
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
% A = p*R-gamma*cos(theta);
% B = (p.^2*l^2)/4-sin(theta)^2;
% % x = cos(alpha)
% x = (p*l.*A + sqrt(p.^2*l^2.*A.^2 - 4*(sin(theta)^2 + A.^2).*B))./(2*(sin(theta)^2 + A.^2));
% subplot(1,2,1)
% plot(H, x)
% subplot(1,2,2)
% plot(H,acos(x)*180/pi)
% shg

%clf
%plot(H,p)
%shg
plot(R_m)