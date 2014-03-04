function y = gety(I, fcutoff)

N = length(I);
X0 = fft(I)/N;
X = fftshift(X0);
f = linspace(-500,500*(1-2/N),N);

H0 = idealLP(N, fcutoff*60);

Y0 = X0 .* H0;

H = fftshift(H0);
Y = fftshift(Y0);
y = ifft(Y0)*N;

end