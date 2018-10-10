% Plot the figure of R_m versus alpha
alpha = linspace(-pi/2,pi/2,80);
l = 4e-6;
theta = 1*pi/3;
R = 1e-6;
R_m = -(l/2-R*cos(alpha))./cos(-alpha+theta);
plot(alpha*180/pi,R_m)
xlabel('alpha (degree)')
ylabel('R_m')
title('Relationship between R_m and alpha')
xlim([-90,90])
shg
