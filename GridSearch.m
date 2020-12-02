function [minloc] = GridSearch(f,xbest,epsilon)
    % initial conditions
    k = 1;
    minloc = [0,0];
    totalEvals = 0;

    % continue checking more points until we are epsilon-close
    while norm(minloc - xbest) >= epsilon
        % define poll set data
        interval = 1/k;
        P = [];
        for i = 0:k
            P = [P,i*interval];
        end

        % store array of polling points
        X = [];
        for j = 1:length(P)
            for i = 1:length(P)
                X = [X;[P(j),P(i)]];
            end
        end
        totalEvals = totalEvals + length(X);
        
        % get the lowest function value in poll set
        min = inf;
        minloc = [0,0];
        for i = 1:length(X)
            tempmin = f(X(i,:));
            if tempmin < min
                min  = tempmin;
                minloc = X(i,:);
            end
        end

        % expand the poll set
        k = k*2;
    end
end
