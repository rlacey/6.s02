function [ cost ] = CF( delay, RS )
    cost = 1 + (delay/30).^3 - RS;
end

