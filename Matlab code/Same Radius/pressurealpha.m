% Plot the figure of R_m versus alpha
alpha = linspace(-pi/2,pi/2,100);
l = 4e-6;
theta = 1*pi/3;
R = 1e-6;
gama = 7e-2;
R_m = -(l/2-R*cos(alpha))./cos(-alpha+theta);
plot(alpha*180/pi,gama./R_m)
xlabel('alpha (degree)')
ylabel('P')
title('Relationship between pressure and alpha')
xlim([-90,90])
shg