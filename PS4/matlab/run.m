[theta0_vals, theta1_vals, J] = lossfctn(gawks, ac, [-100 0], [9 11]);
theta = gradientdescent(gawks, ac, 0.002,[0 0], 1e-7);
m = theta(42687, 2); b = theta(42687, 1);
plot(gawks, ac, 'o', gawks, m*gawks+b, 'm');