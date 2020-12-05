function [xkbest] = alphaDenseMin(f,xbest,epsilon,d,alpha)

%Pick n to achieve alpha-density
n = ceil(sqrt(d-1)/alpha);


%%define the space filling curve
x = spaceFillingFun(n,d); 


%%initial conditions for polling set
k=1 ;
intervalPoints = 1/k;
P = [];
for i = 0:k
    P = [P,i*intervalPoints];
end

%check to enter algorithm while loop
xkbest = x(P(1));


while norm(xkbest - xbest) >= epsilon %stopping condition
    
    %%Expand the poll set
    k = k*2;
    intervalPoints = 1/k;
    P = [];
    if k ==2 %first poll set take all [0,1/2,1]
    for i = 0:k
        P = [P,i*intervalPoints];
    end
    else %subseqent poll sets removing previously calculated points
    for i = 1:2:k 
        P = [P,i*intervalPoints];
    end
    end
   

    %%formating data to be sent to beneath beyond method
    f_store = [];
    for i =1:length(P)
        f_store = [f_store,f(x(P(i)))];
    end
    %%Calculate convex evelope of spaceFillingFunction
    [gxco, gyco] = bb(P,f_store);
    
    
    
    %%Calculate Argmin convex evelope of spaceFillingFunction 
    [M,I] = min(gyco);
    xkbest = x(gxco(I));
    
    
    
    
    
    
    
    
end


end