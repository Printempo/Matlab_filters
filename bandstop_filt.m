function filtered_signal = bandstop_filt(signal, fs)

% Define filter parameters
fcuts = [600 9000]; % Cutoff frequencies in Hz
normalized_fcuts = fcuts / (fs/2); % Convert cutoff frequencies to normalized frequencies
order = 5; % Filter order

% Compute filter coefficients
[b, a] = butter(order, normalized_fcuts, 'stop');

% Apply filter to input signal
filtered_signal = filtfilt(b, a, signal);

end
