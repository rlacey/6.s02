function CI = confidenceintervals(x, y, theta)
    theta0 = theta(1);
    theta1 = theta(2);
    numPoints = length(x);
    totalSE = 0;
    for n = 1:numPoints
        h = theta0 + theta1*x(n);
        totalSE = totalSE + (h - y(n))^2;
    end
    SEres = sqrt(totalSE / (numPoints - 2));
    D = numPoints * sum(x.^2) - sum(x)^2;
    SETheta0 = SEres * sqrt(sum(x.^2) / D);
    SETheta1 = SEres * sqrt(numPoints / D);
    CI = [1.96*SETheta0 1.96*SETheta1];
end

