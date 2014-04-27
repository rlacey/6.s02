% Problem 2a
[pks, locs] = findpeaks(x01, 'MINPEAKHEIGHT', 1100, 'MINPEAKDISTANCE', 140);
intervals = diff(locs);
V = zeros(length(intervals), max(intervals));
for i = 1:length(intervals)
    Bi = x01(locs(i):locs(i+1));
    V(i, 1:length(Bi)) = Bi;
end

% Problem 2b
[I,C] = kmeans(V, 3);   
representatives = zeros(1, 3);
for i = 1:3
    variance = cluster_variance(V(I==i,:), C(i,:));
end

plot(1:size(C,2), C(1,:), 1:size(C,2), C(2,:),1:size(C,2), C(3,:))
legend('Cluster 1', 'Cluster 2', 'Cluster 3');

% Problem 2c
% Ks = 1:20;
% variances = zeros(1,length(Ks));
% for k = min(Ks):max(Ks)
%     [I,C] = kmeans(V, k);   
%     cluster_count = size(C, 1);
%     variance = zeros(1, cluster_count);
%     for i = 1:cluster_count
%         variance(i) = cluster_variance(V(I==i,:), C(i,:));
%     end
%     variances(k) = mean(variance);
% end
% plot(Ks, variances);