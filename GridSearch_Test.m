function tests = GridSearch_Test
tests = functiontests(localfunctions);
end



function test(testCase)
k=7
dimension = 2
i = 10
epsilon = 1/(2^k);

xmin = 0;
ymin = sqrt(2)-1;


%f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 + (x(3)-zmin)^2+ (x(4)-umin)^2+ (x(5)-vmin)^2;
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 
%xbest = [(xmin), ymin,zmin,umin,vmin];
xbest = [(xmin), ymin];
result = GridSearch(f,xbest,epsilon)

verifyEqual(testCase, result', xbest, 'AbsTol', epsilon); 
end