function d = delay(time,x,y)
% Uses minimization of mean-square error to find delay between two 
% waveforms.  Up-samples the data 50x using interpolation to get a finer 
% result.
%
% x, y, and t must have same length
%
% As written, will only find shifts between signals that are < 20% of the
% length of the signal.


pointincrease = 50;     % Amount to upsample vectors

% Upsample time, x, y
timein=time(1):((time(2)-time(1))/pointincrease):time(end);
dt = timein(2) - timein(1);     % determine new dt
xin = interp1(time,x,timein);
yin = interp1(time,y,timein);


shiftlength = 0.2;      % Amount of vector over which to search for min MSE
L = length(xin);        
numlags = round(L * shiftlength);   % Number of indexes over which to shift

lags = -numlags:numlags;

for in=1:length(lags)       % Loop through all the indexes
    lag = lags(in);
    if lag<0                % If lag < 0, then we are shifting x 
        xshift = xin((1+abs(lag)):end);
        yshift = yin(1:length(xshift));
        MSE(in) = sum((yshift - xshift).^2);
    elseif lag>=0           % If lag >= 0, then we are shifting y 
        yshift = yin((1+lag):end);
        xshift = xin(1:length(yshift));
        MSE(in) = sum((yshift - xshift).^2);
    end
end

%plot(lags,MSE)

% return the delay, in units of time vector
d = abs( lags ( MSE==min(MSE)))* dt;

