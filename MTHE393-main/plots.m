%% plot the comparison between measured bode plot and estimated plot

%f1 = openfig("bodePlot.fig");

%xdat = f2.XData;

%f1;
%hold on
s = tf("s");
sys = 6*10^6*(s + 0.003)/((s+0.09)*(s+15)*(s+1000));
figure
bode(sys);
%hold on
% controller illustrations : step response, harmonic response
% different iterations of controller design, show how it improves
% 

