function [p] = signal_power( xrr0, rrt, f1, f2, fs )
    [ XRR1, xrr1] = rrfc( xrr0, rrt, fs);
    N = length(xrr1);
    k1 = N * f1 / fs;
    k2 = N * f2 / fs;
    XRR1s = abs(XRR1).^2;
    p = sum(XRR1s(floor(k1+(N-1)/2):floor(k2+(N-1)/2)))*N;
end
