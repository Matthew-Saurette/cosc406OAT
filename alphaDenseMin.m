function [fbest] = alphaDenseMin(f,xbest,epsilon)
%%Calculate alpha and pick value n for alpha curve
alpha = epsilon/2;
n = 2/epsilon;


%%define the space filling curve
x = spaceFillingFun(n); 


%%initial conditions
k=1 ;
intervalPoints = 1/k;
P = [];
for i = 0:k
    P = [P,i*intervalPoints];
end

xkbest = x(P(1));


while norm(xkbest - xbest) >= epsilon %stopping condition
    
    %%Expand the poll set
    k = k*2;
    intervalPoints = 1/k;
    P = [];
    if k ==2
    for i = 0:k
        P = [P,i*intervalPoints];
    end
    else
    for i = 1:2:k
        P = [P,i*intervalPoints];
    end
    end
   

    %%Calculate convex evelope of spaceFillingFunction
    
    
    
    %%Calculate Argmin convex evelope of spaceFillingFunction
    
    
    
    
    
    
    
    
end

end