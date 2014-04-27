function [ variance ] = cluster_variance( cluster, centroid )
    points_in_cluster = size(cluster, 1);
    L2 = zeros(1, points_in_cluster);
    for i = 1:points_in_cluster
        L2(i) = norm(cluster(i,:) - centroid);
    end
    variance = var(L2);
end