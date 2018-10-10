% alpha1=x, alpha2=y
ListAlpha = linspace(0,pi,200);
R1 = 2e-6;
R2 = 1e-6;
l = 4e-6;
theta = pi/4;
gamma = 7e-2;
% X(1) = Rm
% X(2) = alpha2
Rm = [];
alpha2 = [];
for alpha1 = ListAlpha
    F = @(X) [l - R1*sin(alpha1) - R2*sin(X(2))   - 2*X(1).*cos(0.5*(alpha1-X(2))).*sin(theta + 0.5*(alpha1+X(2)));
              R2*cos(X(2))   - R1*cos(alpha1) - 2*X(1).*sin(0.5*(alpha1-X(2))).*sin(theta + 0.5*(alpha1+X(2)))];
          
    x=fsolve(F,[0,0]);
    Rm = [Rm, x(1)];
    alpha2 = [alpha2, x(2)];
end
figure
subplot(1,2,1)
plot(ListAlpha*180/pi,Rm)
xlabel("alpha (degree)")
ylabel("R_M")
xlim([0,180])
subplot(1,2,2)
plot(ListAlpha*180/pi,gamma./Rm)
xlabel("alpha (degree)")
ylabel("Pressure")
xlim([0,180])

shg