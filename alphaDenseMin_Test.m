function tests = alphaDenseMin_Test
tests = functiontests(localfunctions);
end



function test(testCase)
k=8
epsilon = 1/(2^k);

xmin = epsilon + epsilon/2
ymin = 0.5-epsilon 
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2;
xbest = [(xmin), ymin];

result = alphaDenseMin(f,xbest,epsilon)

verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
end

