fcutoffs = [10,5,2,1,0.5, 0.2, 0.1, 0.05];

size = length(fcutoffs);
SNRs = zeros(1,size);
dQs = zeros(1,size);
Idiffs = zeros(1,size);

%plot(t,I);
hold on;
for j = 1:size
    y = gety(I,fcutoffs(j));
    [s,q,i] = filteredmetrics(t,I,y);
    SNRs(j) = s;
    dQs(j) = q;
    Idiffs(j) = i;
    plot(t,y);
end
