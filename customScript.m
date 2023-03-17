%================Do Not Edit===============================================
% Launch the GUI, which is a singleton
blackBox
% Find handle to hidden figure
temp = get(0,'showHiddenHandles');
set(0,'showHiddenHandles','on');
hfig = gcf;
% Get the handles structure
handles = guidata(hfig);
%================Start Editing=============================================

listOfData = [];
avgNum = 5;

freq_list = [];
ps_list = [];
amp_list = [];

for i = 4.4:-0.2:-3.4
    frequency = 10^i;
    
    if frequency == 0 
        continue
    end

    name = runSim(frequency, handles);
    avgSig = eval(name).output.signal;

    for j = 2:avgNum
        [name, stepSize, stopTime] = runSim(frequency, handles);

        newWave = eval(name);

        avgSig = avgSig + newWave.output.signal;
    end
    
    avgSig = avgSig/avgNum;
    
    a = findAmplitude(avgSig);
    ps = findPhaseShift(avgSig, frequency, stopTime);
    

    freq_list = [freq_list, frequency];
    amp_list = [amp_list, a];
    ps_list = [ps_list, ps];
end

bodePlot(freq_list, amp_list, ps_list)
%=======================End Editing======================================
set(0,'showHiddenHandles',temp);

