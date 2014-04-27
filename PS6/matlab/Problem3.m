total_time = (23+(52/60))*3600;
times = linspace(0, total_time, length(x03));
[pks, locs] = findpeaks(x03, 'MINPEAKHEIGHT', 75);
intervals = diff(times(locs));
rrt = times(locs(2:end));

lf = signal_power(intervals, rrt, 0.04, 0.15, x03_sampling_frequency_in_Hz);
hf = signal_power(intervals, rrt, 0.15, 0.4, x03_sampling_frequency_in_Hz);

ratio = lf/hf