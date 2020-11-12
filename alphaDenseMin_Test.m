function tests = alphaDenseMin_Test
tests = functiontests(localfunctions);
end



function test(testCase)
k=4
dimension = 4
epsilon = 1/(2^k);
alpha = (sqrt(dimension -1)/(2^(ceil(log2(sqrt(dimension-1))))))*epsilon

xmin = 0
ymin = 0.5-epsilon 
zmin =0.5-epsilon 
umin =0.5-epsilon 

f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 + (x(3)-zmin)^2+ (x(4)-umin)^2;
%f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 
xbest = [(xmin), ymin,zmin,umin];
%xbest = [(xmin), ymin];
result = alphaDenseMin(f,xbest,epsilon,dimension,alpha)

verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
end

