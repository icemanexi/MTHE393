function [] = bodePlot(freq, amp, ps)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
figure('Name', 'Bode Plot')
h1 = subplot(2,1,1);
semilogx(freq, 10*log(amp))
h1.YLabel.Visible = 'on';
axes(h1)
ylabel('Gain (dB)')
title('Bode Plot')

%figure('Name', 'Phase Shift Plot')
h2 = subplot(2,1,2);
semilogx(freq, ps)
end