function [minloc] = GridSearch(f,xbest,epsilon)


%%initial conditions
k=1 ;
intervalPoints = 1/k;
P = [];
for i = 0:k
    P = [P,i*intervalPoints];
end
minloc = [P(1),P(1)];

while norm(minloc' - xbest) >= epsilon %stopping condition
    
    %%Expand the poll set
    k = k*2;
    intervalPoints = 1/k;
    P = [];
    for i = 0:k
    P = [P,i*intervalPoints];
    end
    X =[];
    for j = 1:length(P)
        for i = 1:length(P)
            X=[X,[P(j);P(i)]];
        end
        
    end
    min = inf;
    minloc = [];
    for i = 1:length(X)
        tempmin = f(X(:,i));
        if tempmin < min
            min  = tempmin;
            minloc = X(:,i);
        end
    end
    
        
        
        

    
end
disp(length(X(1,:)))
end