%main file to run examples of alphaDenseMin
k=5
dimension = 2
i = 0
epsilon = 1/(2^k);
alpha = (sqrt(dimension -1)/(2^(ceil(log2(sqrt(dimension-1)))+i)))*epsilon


xmin = 0.22;
ymin = 0.77;


%f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 + (x(3)-zmin)^2+ (x(4)-umin)^2+ (x(5)-vmin)^2;
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;
%xbest = [(xmin), ymin,zmin,umin,vmin];
xbest = [(xmin), ymin];
result = alphaDenseMin(f,xbest,epsilon,dimension,alpha)
result2 = GridSearch(f,xbest,epsilon)