function [ XRR1, xrr1] = rrfc( xrr0, rrt,fs)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
rrt_prime = linspace(rrt(1), rrt(end), ((rrt(end)-rrt(1))*fs));
xrr1 = interp1(rrt, xrr0,rrt_prime);

N = length(xrr1);
f = linspace(-0.5,0.5*(1-2/N),N);
X0 = fft(xrr1);
XRR1 = fftshift(X0);
semilogy(f, abs(XRR1));
end

