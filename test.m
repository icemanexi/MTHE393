%% ================Do Not Edit===============================================
% Launch the GUI, which is a singleton
blackBox
% Find handle to hidden figure
temp = get(0,'showHiddenHandles');
set(0,'showHiddenHandles','on');
hfig = gcf;
% Get the handles structure
handles = guidata(hfig);
%================Start Editing=============================================

%% 
parfor i = 1:4
    f = 10^i

    name = runSim(frequency, handles);
    

end