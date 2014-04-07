function [ times, rrt ] = ecg2rr( ecg, minheight, mindistance )
    t = linspace(0, 30+(5/60), length(ecg));
    [pks, locs] = findpeaks(ecg, 'MINPEAKHEIGHT', minheight, 'MINPEAKDISTANCE', mindistance);
    times = diff(t(locs));
    rrt = t(locs(2:end));
end

