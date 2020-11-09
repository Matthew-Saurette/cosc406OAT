function [fbest] = alphaDenseMin(f,xbest,epsilon)
%Calculate alpha and pick value n for alpha curve
alpha = epsilon/2;
n = 2/epsilon;
x = spaceFillingFun(n)
%initial conditions
P = [] %Poll set
xkbest = f(x(P(1)))
while norm(xkbest - xbest) >= epsilon %stopping condition
    
    %%Calculate convex evelope of spaceFillingFunction
    
    %%%%%%%%%%%%
    
    %Calculate Argmin convex evelope of spaceFillingFunction
    
    %%%%%
    
    %Expand the poll set
    
    %%%%%
    
    
end

end