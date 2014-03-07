function theta = gradientdescent( x, y, alpha, theta_init, tol )
    maxIters = 50000;
    iter = 0;
    numPoints = length(x);
    theta0 = theta_init(1);
    theta1 = theta_init(2);
    theta = [theta0 theta1];
    while iter < maxIters
        iter = iter + 1;
        theta0Total = 0;
        theta1Total = 0;
        for i = 1:numPoints
            h = theta0 + theta1 * x(i);
            theta0Total = theta0Total + (h - y(i));
            theta1Total = theta1Total + (h - y(i)) * x(i);
        end
        theta0_old = theta0;
        theta1_old = theta1;
        theta0 = theta0 - alpha / numPoints * theta0Total;
        theta1 = theta1 - alpha / numPoints * theta1Total;
        theta = [theta; theta0 theta1];
        theta0Check = abs((theta0 - theta0_old) / theta0_old);
        theta1Check = abs((theta1 - theta1_old) / theta1_old);
        if theta0Check < tol && theta1Check < tol, break, end
    end
end