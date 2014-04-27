f = linspace(-50000, 100000*(1-1/256)/2, 256);
xfft = fftshift(fft(signal_x));
yfft = fftshift(fft(signal_y));
gamma = 42577;
G = 9.176;
dist = f*100 / (G*gamma);
% Frequency X
plot(f, abs(xfft))
xlabel('Frequency (Hz)')
title('Signal X')
% Frequency Y
plot(f, abs(yfft))
xlabel('Frequency (Hz)')
title('Signal Y')
% Space X
plot(dist, abs(xfft))
xlabel('Space (cm)')
title('Signal X')
% Space Y
plot(dist, abs(yfft))
xlabel('Space (cm)')
title('Signal Y')