function [x] = spaceFillingFun(n,d)


%%calculate x1(t)
x1 =@(t) t;
x = @(t)[x1(t)];
for i =2:d
    xi = @(t) (1/2)*(1-cos(n^(i-1)*pi*t));
    x = @(t)[x(t),xi(t)];
%



end