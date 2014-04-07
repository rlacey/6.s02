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
    [ variance, L2 ] = cluster_variance(V(I==i,:), C(i,:));
%     representatives(i) = L2;
end



% Problem 2c
% Ks = 3:3;
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