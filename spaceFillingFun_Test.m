function tests = spaceFillingFun_Test
tests = functiontests(localfunctions);
end



function test(testCase)
x = spaceFillingFun(1)
result = x(1)
expected = [1,1]

verifyEqual(testCase, result, expected); 
end