function filtered_signal = bandpass_filt(signal, fs)

% Define the passband frequency range
f_low = 300;
f_high = 3000;


% Define the filter order
filter_order = 2;

% Create a bandpass filter with the given frequency range
[b, a] = butter(filter_order, [f_low, f_high] / (fs / 2), 'bandpass');

% Apply the bandpass filter to the interference signal with spikes
filtered_signal = filtfilt(b, a, signal);

end