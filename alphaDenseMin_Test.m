function tests = alphaDenseMin_Test
tests = functiontests(localfunctions);
end

function test_rastrigin_function_variables(testCase)

k=8;
dimension = 2;
epsilon = 1/(2^k);
alpha = epsilon;


%minimizer location
xmin = 0;
ymin = sqrt(2)-1;

%objective function
f = @(x) 20 + (x(1)^2 - 10*cos(2*pi*x(1)) + ((x(2)-(sqrt(2)-1))^2 - 10*cos(2*pi*(x(2)-(sqrt(2)-1))))); 

xbest = [(xmin), ymin];
result = alphaDenseMin(f,xbest,epsilon,dimension,alpha);

verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
end

function worstCaseTest(testCase)

dimension = 4;
i = 0;
k=4;
epsilon = 1/(2^k);
alpha = (sqrt(dimension -1)/(2^(ceil(log2(sqrt(dimension-1)))+i)))*epsilon;

%minimizer location
xmin = 0;
ymin = 0.5-epsilon;
zmin = 0.5-epsilon;
wmin = 0.5-epsilon;


%objective function
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2+ (x(3)-zmin)^2 + (x(4)-wmin)^2  ;
xbest = [(xmin), ymin,zmin,wmin];

result = alphaDenseMin(f,xbest,epsilon,dimension,alpha);

verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
end


function test_schaffer_function_N2(testCase)

dimension = 2;
epsilon = 0.001;
alpha = epsilon;


%minimizer location
xmin = sqrt(2)-(pi/3);
ymin = 0;

%objective function
f = @(x) 0.5 + (sin((x(1)-(sqrt(2)-(pi/3)))^2 - x(2)^2)^2 - 0.5)/(1 + 0.001*((x(1)-(sqrt(2)-(pi/3)))^2 + x(2)^2))^2;

xbest = [(xmin), ymin];
result = alphaDenseMin(f,xbest,epsilon,dimension,alpha);

verifyEqual(testCase, result, xbest, 'AbsTol', epsilon); 
end

