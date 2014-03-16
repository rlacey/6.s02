N = length(xg0);

H0 = notchFilter(N, 50, 70);

xe0Filtered = ifft(ifftshift(H0 .* xe0fft))*N;

plot(t, xe0Filtered, 'r')
