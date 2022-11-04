function [NI] = histogram_stretching(I,SMIN,SMAX)
%HISTOGRAM_STRETCHING Summary of this function goes here
%   Detailed explanation goes here
[W H] = size(I);
SMIN = double(SMIN);
SMAX = double(SMAX);
mini = double(min(min(I)));
maxi = double(max(max(I)));
for i = 1:W
    for j = 1:H
        NI(i,j) = ((SMAX - SMIN) / (maxi - mini)) * (double(I(i,j)) - mini) + SMIN;
    end
end
NI = uint8(NI);
end

