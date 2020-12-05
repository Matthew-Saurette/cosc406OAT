dimension = 5;

k=3;
epsilon = 1/(2^k);
alpha = epsilon;

%minimizer location
xmin = 0.5;
ymin = 0.5;
zmin = 0.5;
wmin = 0.5;
vmin = 0.5;


%objective function
f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2+ (x(3)-zmin)^2 + (x(4)-wmin)^2  +(x(5)-vmin)^2  ;
xbest = [(xmin), ymin,zmin,wmin,vmin];

result = alphaDenseMin(f,xbest,epsilon,dimension,alpha)
