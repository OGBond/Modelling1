% Plot the figure of R_m versus alpha
alpha = linspace(-pi/2,pi/2,80);
l = 4e-6;
theta = 1*pi/4;
R = 1e-6;
R_m = -(l/2-R*cos(alpha))./cos(-alpha+theta);
plot(alpha*180/pi,R_m)
xlabel('$\alpha$ (degrees)','Interpreter','latex')
ylabel('$R_M$','Interpreter','latex')
title('Relationship between $R_M$ and $\alpha$','Interpreter','latex')
xlim([-90,90])
shg