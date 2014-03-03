function [xout, changes] = cgmprefilter(xin, t)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    len = length(t);
    xout = zeros(len, 1);
    changes = zeros(len, 1);
    xout(1) = xin(1);
    for i = 2:length(t)
        diff = xin(i) - xout(i-1);
        if (abs(diff) > 20)
            changes(i) = 1;
            if (diff > 0)
                xout(i) = xout(i-1) + 20;
            else
                xout(i) = xout(i-1) - 20;
            end
        else
            xout(i) = xin(i);
        end
    end
end

