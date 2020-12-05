
%hold on
%[X2,Y2,Z2] = sphere;
%r = 0.25;
%X2 = X2 * r;
%Y2 = Y2 * r;
%Z2 = Z2 * r;
%surf(X2+0.25,Y2,Z2+0.5)

k=1000 ;
intervalPoints = 1/k;
P = [];
for i = 0:k
    P = [P,i*intervalPoints];
end
x = spaceFillingFun(100,2)
X = []
Y = []
F=[]
xmin = 0.5;
ymin = 0.5;
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;
for i =1:k
    xv =x(P(i));
    X = [X,xv(1)];
    Y= [Y,xv(2)];
    F = [F,f(xv)];
end
t= 0:0.002:1
g = (t-(xmin)).^2 + ((1/2)*(1-cos(100^(1)*pi*t))-ymin).^2
plot(t,g)

%scatter(X,F)
%scatter(X,Y)
%[N,M] = meshgrid(0:.01:1);                                
%Z = (N-0.5).^2 + (M-0.5).^2
%surf(N,M,Z)
