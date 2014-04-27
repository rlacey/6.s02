function [ XRR1, xrr1] = rrfc( xrr0, rrt, fs)
    rrt_linspace = linspace(rrt(1), rrt(end), ((rrt(end)-rrt(1))*fs));
    xrr1 = interp1(rrt, xrr0, rrt_linspace);
    X0 = fft(xrr1);
    XRR1 = fftshift(X0);
end

