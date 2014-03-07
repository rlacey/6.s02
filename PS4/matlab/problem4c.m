times = round(1:590/49:600);
step = 590/49;

theta0s = zeros(1, 50);
theta1s = zeros(1, 50);
cis = zeros(2, 50);

for i = 1:50 
    tvec = tend(1:i*round(step));
    Ivec = Iendlog(1:i*round(step));
    [theta0s(i), theta1s(i), ci] = glucosepredict( tvec, Ivec );
    cis(i, 1) = ci(1);
    cis(i, 2) = ci(2);
end

plot(times, theta0s, times, theta1s);