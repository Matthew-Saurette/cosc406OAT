function tests = alphaDenseMin_Test
tests = functiontests(localfunctions);
end



function test(testCase)
k=9
epsilon = 1/(2^k);
xmin = 0.5 + epsilon/2
ymin = 0.5-epsilon 
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2;
xbest = [(xmin), ymin];

result = alphaDenseMin(f,xbest,epsilon)

verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
end
%function test2(testCase)
%k=0;
%worstindex = -1;
%for i = 0.4:0.1:1
    
%f = @(x) (x(1)-(0.50005))^2 + (x(2)-i)^2;
%xbest = [(0.50005), i];
%epsilon = 0.0001;
%result = alphaDenseMin(f,xbest,epsilon);
%if result > k
%    worstindex = i
%    k = result
%end
%end
%
%verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
%end
