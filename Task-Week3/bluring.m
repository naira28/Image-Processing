function [edges] = bluring(img)
mask = [1 1 1; 1 1 1; 1 1 1]/255/9;
edges = filter2(mask, img);
imshow(edges);
end

