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

semilogy(f, abs(xe0fft));
xlabel('Frequency');
ylabel('DTFS');
title('ECG FFT Frequency Response');

%%
%  PART B
%%

ESD = abs(xg0fft).^2;
%semilogy(f, ESD);
% xlabel('Frequency');
% ylabel('DTFS');
% title('Glucose FFT Frequency Response');