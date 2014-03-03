
range = -pi:0.01:pi;

y = 1 ./ (1 - exp(-1i * range));

plot(range, y)