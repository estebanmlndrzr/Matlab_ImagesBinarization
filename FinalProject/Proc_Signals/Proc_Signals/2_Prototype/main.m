close all;
clear all;
clc;

%% Read data
T = readtable('motor_7.xlsx');  % read the data
V=T.Voltage_1(1:1000,1);
subplot(4,1,1);
plot(V)    
title('Original signal')

%% Calculate Fast Fourier Transform for original signal
V_f = abs(fft(V));
subplot(4,1,2);
plot(V_f) 
title('Fourier transform of Original signal')

%% Low pass filter
V_filtered = lowpass(V,0.005,0.1);
subplot(4,1,3);
plot(V_filtered) 
title('Low pass filtered signal')

%% Fourier transform to filtered signal
V_ff = abs(fft(V_filtered));
subplot(4,1,4);
plot(V_ff)
title('Fourier transform of filtered signal')




