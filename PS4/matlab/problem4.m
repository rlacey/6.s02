minConstant = min(I(1:400));
maxConstant = max(I(1:400));
constantDiff = maxConstant - minConstant;

i_start = find(diff(I) > constantDiff, 1);
i_exp = i_start + 400;
t_start = t(i_start);
t_exp = t(i_exp);
Iend = I(i_exp:end);
Iendlog = log10(Iend);
tend = t(i_exp:end);

x_norm = (gawks - min(gawks))/(max(gawks)-min(gawks));
y_norm = (ac - min(ac))/(max(ac)-min(ac));

descentLog = gradientdescent(x_norm, y_norm, 1.5,[0 0],1e-6);
temp = descentLog(end, :);
theta0Prime = temp(1);
theta1Prime = temp(2);

theta0Orig = min(ac) + theta0Prime * (max(ac) - min(ac)) - theta1Prime * min(gawks) * ((max(ac) - min(ac)) / (max(gawks) - min(gawks)))
theta1Orig = theta1Prime * ((max(ac) - min(ac)) / (max(gawks) - min(gawks)))