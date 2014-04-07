function [p] = powerpp( xrr0, rrt, f1, f2 )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
[ XRR1, xrr1] = rrfc( xrr0, rrt,128);
N = length(xrr1);
k1 = N*f1/128;
k2 = N*f2/128;
XRR1s = abs(XRR1).^2;
p = sum(XRR1s(floor(k1+(N-1)/2):floor(k2+(N-1)/2)))*N;
end
