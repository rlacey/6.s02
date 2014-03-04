function [SNR, dQ, Idiff] = filteredmetrics( time, I, y )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

SNR = 10*log10(max(y)/var(y(1:10000)));

Qy =  cumsum(y*(time(2)-time(1)));
QI = cumsum(I*(time(2)- time(1)));
dQ = Qy(length(Qy))/QI(length(QI));
Idiff = sqrt(sum((I-y).^2));
end

