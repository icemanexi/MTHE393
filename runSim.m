function [saveName, stepSize, stopTime] = runSim(frequency, handles)
    %% RUN ONCE TO MAKE EVERYTHING WORK
    % EQUATION INPUT
    stopTime = 10;
    stepSize = 0.1;

    name = sprintf('0');
    set(handles.input, 'String', name);
    blackBox('input_Callback',handles.input,[],handles);
    % HANDLES
    set(handles.axisStart, 'String', '0');
    set(handles.axisEnd, 'String', string(stopTime));
    set(handles.stepSize, 'String', stepSize);
    set(handles.refineOutput, 'String', '1');

    set(handles.axisEnd, 'String', 1);
    blackBox('run_Callback',handles.run,[],handles);

    %% Second input
    % EQUATION INPUT
    amplitude = 1;
    stopTime = max(abs((1/frequency)*2*pi*10), 1);
    stepSize = abs(1/(frequency*10));

    name = sprintf('%f*sin(%f*t)',amplitude, frequency);
    set(handles.input, 'String', name);
    blackBox('input_Callback',handles.input,[],handles);
        
    % START, END, STEP, REFINE
    set(handles.axisStart, 'String', '0');
    set(handles.axisEnd, 'String', string(stopTime));
    set(handles.stepSize, 'String', stepSize);
    set(handles.refineOutput, 'String', '1');
    
    % RUN AGAIN
    set(handles.axisEnd, 'String', string(stopTime));
    blackBox('run_Callback',handles.run,[],handles);
    
    % SAVE NAME
    saveName = 'freq_'+replace(string(frequency), '.', '_');
    set(handles.saveFile, 'String', saveName);
    % SAVE BUTTON
    blackBox('save_Callback',handles.save,[],handles);
    
end