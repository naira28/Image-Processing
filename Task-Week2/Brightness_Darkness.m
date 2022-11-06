function [B_D] = Brightness_Darkness(imgGray,offset,option) 
[H W L] = size(imgGray); 
B_D = zeros(H,W); 
B_D = double(B_D); 
for a = 1:H 
    for b = 1:W 
        if (option == 1)  
        B_D(a,b) = (imgGray(a,b) + offset) ; 
        end 
        if (option == 2)  
        B_D(a,b) = (imgGray(a,b) * offset) ; 
        end 
        if (option == 3) 
        B_D(a,b) = (imgGray(a,b) - offset) ; 
        end 
        if (option == 4) 
        B_D(a,b) = (imgGray(a,b) / offset) ; 
        end 
    end  
end 
 
B_D = uint8(B_D); 
imshow(B_D); 
             
end
