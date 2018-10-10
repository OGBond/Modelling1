% Plot the figure of R_m versus alpha
alpha = linspace(-pi,pi,100);
l = 4e-6;
theta = 1*pi/6;
R = 1e-6;
R_m = -(l/2-R*cos(alpha))./cos(-alpha+theta);
plot(alpha,R_m)
xlabel('alpha')
ylabel('R_m')
title('Relationship between R_m and alpha')
