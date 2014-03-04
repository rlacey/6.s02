alphas = [1, 0.95, 0.9, 0.8, 0.6];
RS = zeros(length(alphas), 15);
d = zeros(length(alphas), 15);
cf = zeros(length(alphas), 15);
for j = 1:length(alphas)
    for i = 1:15
        y = movingaverage(x,i,alphas(j));
        RS(j,i) = rs(x,y);
        d(j,i) = delay(t,x,y);
        cf(j,i) = CF(d(j,i),RS(j,i));
    end
end

plot(1:15, RS(1,:), 1:15, RS(2,:), 1:15, RS(3,:), 1:15, RS(4,:), 1:15, RS(5,:));
legend('1', '0.95', '0.9', '0.8', '0.6')


%plot(1:15, d(1,:), 1:15, d(2,:), 1:15, d(3,:), 1:15, d(4,:), 1:15, d(5,:));
%plot(1:15, cf(1,:), 1:15, cf(2,:), 1:15, cf(3,:), 1:15, cf(4,:), 1:15, cf(5,:));