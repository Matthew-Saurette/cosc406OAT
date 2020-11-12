[X] = meshgrid(0:.001:1);                                
Y = (1/2)*(1-cos(4*pi*X))
Z = (1/2)*(1-cos(4*X))
surf(X,Y,Z)
hold on
[X2,Y2,Z2] = sphere;
r = 0.25;
X2 = X2 * r;
Y2 = Y2 * r;
Z2 = Z2 * r;
surf(X2+0.25,Y2,Z2+0.5)
syms t h n r k m b ep r2
eq1 = t^2 -2*t*h +h^2 + (0.5*(1-cos(n*pi*t)))^2 - k*(1-cos(n*pi*t)) + k^2 == r
assume(t > 0)
assume(h > 0)
assume(n > 0)
assume(r > 0)
assume(k > 0)
eqns = [(t-h)^2  + (m*t + b - k)^2 == r, r>0, 0<k<1, 0<h<1 0<=t<=1, n>=1]
s1=solve(eqns,t,"ReturnConditions" , true)

eqns = [((h - b*m + k*m + (- b^2 - 2*b*h*m + 2*b*k - h^2*m^2 + 2*h*k*m - k^2 + r*m^2 + r)^(1/2))/(m^2 + 1)+ep-h)^2  + (m*((h - b*m + k*m + (- b^2 - 2*b*h*m + 2*b*k - h^2*m^2 + 2*h*k*m - k^2 + r*m^2 + r)^(1/2))/(m^2 + 1)+ep) + b - k)^2 == r2,ep>0,r2>r, r>0, 0<k<1, 0<h<1 0<=t<=1, n>=1]
s2= solve(eqns,ep,"ReturnConditions" , true)
r = 0.5
r2= 1

t = -((- b^2 - 2*b*h*m + 2*b*k - h^2*m^2 + 2*h*k*m - k^2 + r*m^2 + r)^(1/2) + (- b^2 - 2*b*h*m + 2*b*k - h^2*m^2 + 2*h*k*m - k^2 + r2*m^2 + r2)^(1/2))/(m^2 + 1)
