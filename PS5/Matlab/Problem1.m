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

EtG = N * sum(xg0s)
f1 = 100;
f2 = 500;
k1 = N*f1 / 1000;
k2 = N*f2 / 1000;
EfG = N * sum(xg0sfft(floor(k1+(N-1)/2):floor(k2+(N-1)/2)))
EfG / EtG

% xe0s = abs(xe0fftUnshifted).^2;
% xe0sfft = fftshift(xe0s);
% semilogy(f, xe0sfft);

% function [ power, power2] = checkoff4( xrr0, rrt, f1, f2 )
% [ XRR1, xrr1] = rrfc( xrr0, rrt,1);
% N = length(xrr1);
% k1 = N*f1;
% k2 = N*f2;
% XRR1s = abs(XRR1).^2;
% power = sum(XRR1s(floor(k1+(N-1)/2):floor(k2+(N-1)/2)))*N;
% end
