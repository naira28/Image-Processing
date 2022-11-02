function [] = Histogram(img)
arrhist=zeros(256,1);
[w, h, l]=size(img);
for i=1:w
    for j=1:h
     if l==3
            arrhist(img(i,j,1)+1)=arrhist(img(i,j,1)+1)+1;
            arrhist(img(i,j,2)+1)=arrhist(img(i,j,2)+1)+1;
            arrhist(img(i,j,3)+1)=arrhist(img(i,j,3)+1)+1;
        
        else
         arrhist(img(i,j)+1)=arrhist(img(i,j)+1)+1;
     end
        
    end
end

bar(arrhist);
end

