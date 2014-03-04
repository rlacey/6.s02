function [ y ] = prob3c( alpha )
    range = -pi:0.01:pi;
    y = (1/sum(alpha.^(1:3))) * (alpha + alpha^2*exp(-1i.*range) + alpha^3*exp(-2i.*range));
end

