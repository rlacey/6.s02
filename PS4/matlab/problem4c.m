times = round(1:590/49:600);
step = 590/49;

theta0s = zeros(1, 50);
theta1s = zeros(1, 50);
cis = zeros(2, 50);

for i = 1:50 
    tvec = tend(1:i*round(step));
    Ivec = Iendlog(1:i*round(step));
%     % Gradient descent
%     x_norm = (tvec - min(tvec))/(max(tvec)-min(tvec));
%     y_norm = (Ivec - min(Ivec))/(max(Ivec)-min(Ivec));
%     descentLog = gradientdescent(x_norm, y_norm, 0.01, [0 0], 1e-4);
%     temp = descentLog(end, :);
%     theta0Prime = temp(1);
%     theta1Prime = temp(2);
%     theta0s(i) = min(Ivec) + theta0Prime * (max(Ivec) - min(Ivec)) - theta1Prime * min(tvec) * ((max(Ivec) - min(Ivec)) / (max(tvec) - min(tvec)));
%     theta1s(i) = theta1Prime * ((max(Ivec) - min(Ivec)) / (max(tvec) - min(tvec)));
%     cis(i) = confidenceintervals(tvec, Ivec, [theta0s(i) theta1s(i)]);
    % Glucose predict
    [theta0s(i), theta1s(i), ci] = glucosepredict( tvec, Ivec );
    cis(1, i) = ci(1);
    cis(2, i) = ci(2);
end

semilogy(tvec, abs(cis(1,:)/theta0s), tvec, abs(cis(2,:)/theta1s));