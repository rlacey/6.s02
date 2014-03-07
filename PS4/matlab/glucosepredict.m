function [ theta0, theta1, ci ] = glucosepredict( t, I )
    
    x_norm = (t - min(t))/(max(t)-min(t));
    y_norm = (I - min(I))/(max(I)-min(I));

    descentLog = gradientdescent(x_norm, y_norm, 0.01, [0 0], 1e-4);
    temp = descentLog(end, :);
    theta0Prime = temp(1);
    theta1Prime = temp(2);

    theta0 = min(I) + theta0Prime * (max(I) - min(I)) - theta1Prime * min(t) * ((max(I) - min(I)) / (max(t) - min(t)));
    theta1 = theta1Prime * ((max(I) - min(I)) / (max(t) - min(t)));

    ci = confidenceintervals(t, I, [theta0 theta1]);
end

