%main file to run question 2 OAT

%%%POOR CASE Space curve // Worst case Gridsearch
disp("Worst Case")
k=5;
dimension = 2;
i = 0;
epsilon = 1/(2^k);
alpha = (sqrt(dimension -1)/(2^(ceil(log2(sqrt(dimension-1)))+i)))*epsilon;


xmin = 0;
ymin = 0.5-epsilon;


f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;

xbest = [(xmin), ymin];
result = alphaDenseMin(f,xbest,epsilon,dimension,alpha);
result2 = GridSearch(f,xbest,epsilon);


%%%%%%%%% random point strict eps
disp("random point strict eps")
k=5;
dimension = 2;
i = 0;
epsilon = 0.001;
alpha = (1/2)*epsilon;


xmin = sqrt(2)-1;
ymin = sqrt(2)-(pi/3);


f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;

xbest = [(xmin), ymin];
result3 = alphaDenseMin(f,xbest,epsilon,dimension,alpha);
result4 = GridSearch(f,xbest,epsilon);
%%%%%%%%% random point strict epsilon shifted min
disp("random point strict eps shifted min ")
k=5;
dimension = 2;
i = 0;
epsilon = 0.001;
alpha = (1/2)*epsilon;


xmin = sqrt(2)-1+0.01;
ymin = sqrt(2)-(pi/3);


f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;

xbest = [(xmin), ymin];
result5 = alphaDenseMin(f,xbest,epsilon,dimension,alpha);
result6 = GridSearch(f,xbest,epsilon);
%%%%%%%%% random point relaxed epsilon
disp("random point relax eps")
k=5;
dimension = 2;
i = 0;
epsilon = 0.01;
alpha = (1/2)*epsilon;


xmin = sqrt(2)-1;
ymin = sqrt(2)-(pi/3);


f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;

xbest = [(xmin), ymin];
result5 = alphaDenseMin(f,xbest,epsilon,dimension,alpha);
result6 = GridSearch(f,xbest,epsilon);

%%%%%%%%% random point relaxed epsilon shifted min
disp("random point relax eps shifted min ")
k=5;
dimension = 2;
i = 0;
epsilon = 0.01;
alpha = (1/2)*epsilon;


xmin = sqrt(2)-1+0.01;
ymin = sqrt(2)-(pi/3);


f = @(x) (x(1)-(xmin))^2 + (x(2)-ymin)^2 ;

xbest = [(xmin), ymin];
result5 = alphaDenseMin(f,xbest,epsilon,dimension,alpha);
result6 = GridSearch(f,xbest,epsilon);


