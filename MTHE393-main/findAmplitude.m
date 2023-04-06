function [amplitude] = findAmplitude(wave)

N = floor(length(wave)/2);

maxi = max(wave(N:end));

mini = min(wave(N:end));

amplitude = maxi - mini;

end