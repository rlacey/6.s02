%%
%  PART A
%%

N = length(xg0);

xg0fftUnshifted = fft(xg0)/N;
xe0fftUnshifted = fft(xe0)/N;

xg0fft = fftshift(xg0fftUnshifted);
xe0fft = fftshift(xe0fftUnshifted);

f = linspace(-500, 500*(1-1/N), N);

% semilogy(f, abs(xg0fft));
% xlabel('Frequency');
% ylabel('DTFS');
% title('Glucose FFT Frequency Response');

% semilogy(f, abs(xe0fft));
% xlabel('Frequency');
% ylabel('DTFS');
% title('ECG FFT Frequency Response');

%%
%  PART B
%%

xg0s = abs(xg0fftUnshifted).^2;
xg0sfft = fftshift(xg0s);
% semilogy(f, xg0sfft);

xe0s = abs(xe0fftUnshifted).^2;
xe0sfft = fftshift(xe0s);
% semilogy(f, xe0sfft);

%%
%  PART C
%%

f1 = 500;
f2 = 500;

k1 = N*f1 / 1000;
k2 = N*f2 / 1000;

EtG = N * sum(xg0s);
EfG = N * sum(xg0sfft(floor(k1+(N-1)/2):floor(k2+(N-1)/2)));
GlucoseRatio = EfG / EtG;

EtE = N * sum(xe0s);
EfE = N * sum(xe0sfft(floor(k1+(N-1)/2):floor(k2+(N-1)/2)));
ECGRatio = EfE / EtE;
