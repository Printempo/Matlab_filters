function filtered_signal = highpass_filt(signal, fs)

% Define filter parameters
fcut = 100; % Cutoff frequency in Hz
normalized_fcut = fcut / (fs/2); % Convert cutoff frequency to normalized frequency
order = 3; % Filter order

% Compute filter coefficients
[b, a] = butter(order, normalized_fcut, 'high');

% Apply filter to input signal
filtered_signal = filtfilt(b, a, signal);

end
