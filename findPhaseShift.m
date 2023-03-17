function PS = findPhaseShift(avgWave, freq, stopTime)

N = length(avgWave);

step = ((1:N)/N)*stopTime;

a1 = sin(freq*(step));
a2 = avgWave;

%figure
%hold on
%plot(a1);
%plot(a2);

[c,lag]=xcorr(a1(floor(N/2):end), ... 
                    a2(floor(N/2):end));
%figure
%plot(c)


[~,i]=max(c); % find max cross correlation

dt = (lag(i)/length(avgWave)) * (stopTime);
PS = (dt) * freq; % calculated phase in radians

PS = rad2deg(PS);

end
