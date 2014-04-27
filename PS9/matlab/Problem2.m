f = linspace(-50000, 100000*(1-1/256)/2, 256);
xfft = fftshift(fft(signal_x));
% yfft = fftshift(fft(signal_y));
gamma = 42577;
G = 9.176;
dist = f*100 / (G*gamma);
% Frequency X
% plot(f, abs(xfft))
% xlabel('Frequency (Hz)')
% title('Signal X')
% Frequency Y
% plot(f, abs(yfft))
% xlabel('Frequency (Hz)')
% title('Signal Y')
% Space X
plot(dist, abs(xfft))
xlabel('Space (cm)')
title('Signal X')
% % Space Y
% plot(dist, abs(yfft))
% xlabel('Space (cm)')
% title('Signal Y')


% G_a = G * 9/8;
% dist_a = f*100 / (1 * G_a*gamma);
% 
% fn = f;
% i = find(f < -24500);
% fn(i) = fn(i) + 781.2;
% 
% a = abs(xfft);
% 
% subplot(2,1,1)
% plot(f, abs(xfft), fn(i), a(i),'red');
% xlabel('Space (cm)')
% title('Unaltered Gradient')
% 
% subplot(2,1,2)
% plot(dist_a, abs(xfft))
% xlabel('Space (cm)')
% title('Altered Gradient (9/8 Gx)')
