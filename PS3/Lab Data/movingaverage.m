function [ y ] = movingaverage( x, order, alpha )
    y = zeros(1,length(x));
    alphas = alpha.^(1:order)';
    alphasSum = sum(alphas);
    for j = 1:length(x)
        if j >= order
            y(j) = sum(x(j:-1:j-(order-1)) .* alphas) / alphasSum;        
        else
            y(j) = sum(x(j:-1:1) .* alphas(1:j)) / alphasSum;
        end   
    end
end