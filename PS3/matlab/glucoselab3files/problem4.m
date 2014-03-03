[xout, changes] = cgmprefilter(x, t);
plot(t, x, t, xout);
hold on;
locs = find(changes > 0);
plot(locs *5, x(locs), 'ro');
legend('xin', 'xout');
xlabel('time (min)');
ylabel('Concentration (mg/dl)');
hold off;

% Number of non-zero elements in changes 
nnz(changes)