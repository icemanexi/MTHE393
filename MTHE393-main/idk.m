%% show linearity of system

t1 = sin.input.time;
in = sin.input.signal;
t2 = sin.output.time;
out = sin .output.signal;

f = figure('Name', 'input = cos(t)');

h1 = subplot(1,2,1);
h1.YLabel.Visible = 'on';
axes(h1)
plot(t1, in)
title('Input = 0.1*sin(t)')
ylabel('Signal')
xlabel('Time')

%figure('Name', 'Phase Shift Plot')
h2 = subplot(1,2,2);
axes(h2)
plot(t2, out)
title('Output')
ylabel('Signal')
xlabel('Time')