function H0 = notchFilter(N, lowFrequency, highFrequency)
    middle = N/2;
    lowK = 60 * lowFrequency;
    highK = 60 * highFrequency;
    H0 = ones(N,1);
    H0(middle-highK:middle-lowK) = 0;
    H0(middle+lowK:middle+highK) = 0;
end

