% alpha1=x, alpha2=y
alpha1 = linspace(0,pi,100);
R1 = 1;
R2 = 2;
l = 3;
theta = pi/3;
% X(1) = Rm
% X(2) = alpha2
F = @(X) [l - R1*sin(alpha1) - R2*sin(X(2))   - 2*X(1)*cos(0.5*(alpha1-X(2)))*sin(theta + 0.5*(alpha1+X(2)));
              R2*cos(X(2))   - R1*cos(alpha1) - 2*X(1)*sin(0.5*(alpha1-X(2)))*sin(theta + 0.5*(alpha1+X(2)))];
          