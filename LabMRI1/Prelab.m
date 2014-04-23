C = 1000;
T2 = 50;
period = 0.1;
fs = 1/period;
time = 1:period:500;

x1 = C * exp(-time/T2);

% plot(time, x1);

f = linspace(-fs/2, fs/2, length(time));
x1fftUnshifted = fft(x1);
x1fft = fftshift(x1fftUnshifted);


% plot(f, x1fft);

omega = 2 * pi * 1;
x2 = C * exp(-1i * omega * time) .* exp(-time / T2);

% plot(time, x2);

x2fftUnshifted = fft(x2);
x2fft = fftshift(x2fftUnshifted);

plot(f, x2fft);