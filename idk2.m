%% show linearity of system

t1 = sin.input.time;
y1 = sin.input.signal;

t2 = cos.output.time;
y2 = cos.output.signal;

t3 = f_of_sum.output.time;
y3 = f_of_sum.output.signal;

sum = y1 + y2;

f = figure;

h1 = subplot(1,2,1);
h1.YLabel.Visible = 'on';
axes(h1)
plot(t3,y3)
title('Ouput(sin(t) + cos(t))')
ylabel('Signal')
xlabel('Time')

%figure('Name', 'Phase Shift Plot')
h2 = subplot(1,2,2);
axes(h2)
plot(t1, sum)
title('Output(sin(t)) + Ouput(cos(t))')
ylabel('Signal')
xlabel('Time')