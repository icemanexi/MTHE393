
tfinal = 70;    % sim stop time
sd_noise = 0.1;   % standard deviation of noise in output
n = 30;

Kp = 0.35;
Ki = 6;
Kd = 3;
tau_f = 70;
s_eed = floor(rand(1)*100);
out1 = sim('wk10_clsys', 'StopTime', num2str(tfinal));
avgSig = out1.y;
% tuning 1
for i = 2:n
s_eed = floor(rand(1)*100);
out1 = sim('wk10_clsys', 'StopTime', num2str(tfinal));
avgSig = avgSig + out1.y;
end

avgSig = avgSig / n;

% tuning 2
%Kp = 0.35;
%Ki = 6;
%Kd = 3;
%tau_f = 70;

%out2 = sim('wk10_clsys', 'StopTime', num2str(tfinal));

y1 = 1.02;
y2 = 0.98;

close all

figure
%subplot(211)
plot(out1.t,avgSig, "color", "k")
%hold on
%plot(out1.t, avgSig,"color", "b")
%plot(out2.t, out2.y,"color", "r")
%xline(38)
%yline(y1)
%yline(y2)
%hold off
%ylabel("output")
%xlabel("time")
%title("Closed loop response")
%legend("setpoint", "tuning 1", "tuning 2")

%subplot(212)
%plot(out1.t, out1.u, "color", "b")
%hold on
%plot(out2.t, out2.u, "color", "r")
%hold off
%ylabel("input")
%xlabel("time")
%legend("tuning 1", "tuning 2")

