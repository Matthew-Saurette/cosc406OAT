function tests = GridSearch_Test
    tests = functiontests(localfunctions);
end

% basic case: irrational number as goal
function testA(testCase)
    % initialize params
    k = 7;
    epsilon = 1/(2^k);

    % define goal
    xmin = 0;
    ymin = sqrt(2)-1;
    xbest = [xmin, ymin];

    % define test function
    f = @(x) (x(1) - xmin)^2 + (x(2) - ymin)^2;
    result = GridSearch(f,xbest,epsilon);

    % run test
    verifyEqual(testCase, result, xbest, 'AbsTol', epsilon);
    disp(result);
end

% test at (1-eps,1-eps)
function testB(testCase)
    % initialize params
    epsilon = 0.01;

    % define goal
    xmin = 1-epsilon;
    ymin = 1-epsilon;
    xbest = [xmin, ymin];

    % define test function
    f = @(x) (x(1) - xmin)^2 + (x(2) - ymin)^2;
    result = GridSearch(f,xbest,epsilon);
    
    % run test
    verifyEqual(testCase, result, xbest, 'AbsTol', epsilon);
    disp(result);
end

% test single-iteration solve (while loop doesn't run)
function testC(testCase)
    % initialize params
    epsilon = 0.75;

    % define goal
    xmin = 0.5;
    ymin = 0.5;
    xbest = [xmin, ymin];

    % define test function
    f = @(x) (x(1) - xmin)^2 + (x(2) - ymin)^2;
    result = GridSearch(f,xbest,epsilon);
    
    % run test
    verifyEqual(testCase, result, xbest, 'AbsTol', epsilon);
    disp(result);
end
