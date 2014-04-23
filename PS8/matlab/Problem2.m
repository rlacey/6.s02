close all;
f = linspace(-50000, 100000*(1-1/256)/2,256);
a = fftshift(fft(signal_y));
% plot(f,abs(a))

gamma = 42577;
G = 9.176;

dist = f*100 / (G*gamma);

plot(dist, abs(a))

