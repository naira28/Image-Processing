function [grayimg] = rgb2gray(rgbimg);
[H W L] =size(rgbimg);
grayimg =zeros(H,W);
grayimg=double(grayimg);
for i=1:H
    for j=1:W
        grayimg(i,j)=(rgbimg(i,j,1)+rgbimg(i,j,2)+rgbimg(i,j,3))/3;
    end
end
grayimg =uint8(grayimg);
imshow(grayimg);
end

