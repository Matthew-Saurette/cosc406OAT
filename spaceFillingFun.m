function [x] = spaceFillingFun(n)


%%calculate x1(t)
x1 = @(t) t


%%calculate x2(t)
x2 = @(t) t
%
x = @(t)[x1(t),x2(t)]


end