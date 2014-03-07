function [theta0_vals, theta1_vals, J] = lossfctn( x, y, theta0range, theta1range )
    theta0_vals = zeros(1,100);
    theta1_vals = zeros(1,100);
    theta0s = theta0range(1):(theta0range(2) - theta0range(1))/99:theta0range(2);
    theta1s = theta1range(1):(theta1range(2) - theta1range(1))/99:theta1range(2);
    J = zeros(100);
    numPoints = length(x);
    for i = 1:length(theta0s)
        theta0_vals(i) = theta0s(i);
        for j = 1:length(theta1s)
            theta1_vals(j) = theta1s(j);
            total = 0;
            for n = 1:numPoints
                h = theta0s(i) + theta1s(j)*x(n);
                total = total + (h - y(n))^2;
            end
            total = (0.5/numPoints) * total;
            J(i, j) = total;
        end
    end
end

