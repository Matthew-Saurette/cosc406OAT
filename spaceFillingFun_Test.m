function tests = spaceFillingFun_Test
tests = functiontests(localfunctions);
end



function test(testCase)
x = spaceFillingFun(0,3)
result = x(1)
expected = [1,0,0]

verifyEqual(testCase, result, expected); 
end