function tests = bb_Test
tests = functiontests(localfunctions);
end



function test1(testCase)
x=[1,2,3;4,5,6;7,8,9];
y = [1,2,3,4,5,6,7,8,9];
verifyError(testCase,@()bb(x,y),"");
end

function test2(testCase)
x=[1,2,3;4,5,6];
y=[4,5,6;1,2,3];
verifyError(testCase,@()bb(x,y),"");
end

function test3(testCase)
x=[1,2];
y=[3,1];
actSolution = bb(x,y);
expSolution = x';
verifyEqual(testCase,actSolution,expSolution);
end

function test4(testCase)
x=[1;2;3;4;5];
y=[6;7;8;9;10];
actSolution=bb(x,y);
expSolution=[1;5];
verifyEqual(testCase,actSolution,expSolution);
end

function test5(testCase)
x=[4;5;3;6;6];
y=[9;10;11;12;1];
actSolution=bb(x,y);
expSolution=[4;6];
verifyEqual(testCase,actSolution,expSolution);
end
