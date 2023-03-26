clear all

im=imread("airplane_grayscale.png");
im=double(im);
figure(1)
imshow(uint8(im))
title('Orginal Image')


T=25;
L_B=0;
L_G=255;
g=zeros(size(im));
h1=[1 0 ;0 -1];
h2=[0 1 ;-1 0];
%case-1
gra_im=gra(im,h1,h2);%getting the gradient image
figure(2)
imshow(uint8(gra_im))
title('Roberts Gradient')

%case-2
for i=1:size(im,1)
    for j=1:size(im,2)
        if gra_im(i,j)>=T
            g(i,j)=gra_im(i,j);
        else
            g(i,j)=im(i,j);
        end
    end
end
figure(3)
imshow(uint8(g))
title('retaining the smooth background')

%case-3
for i=1:size(im,1)
    for j=1:size(im,2)
        if gra_im(i,j)>=T
            g(i,j)=L_G;
        else
            g(i,j)=im(i,j);
        end
    end
end
figure(4)
imshow(uint8(g))
title('Edges set to a gray level = 255')

%case-4
for i=1:size(im,1)
    for j=1:size(im,2)
        if gra_im(i,j)>=T
            g(i,j)=gra_im(i,j);
        else
            g(i,j)=L_B;
        end
    end
end
figure(5)
imshow(uint8(g))
title('Backround set to a gray level = 0')

%case-5
for i=1:size(im,1)
    for j=1:size(im,2)
        if gra_im(i,j)>=T
            g(i,j)=L_G;
        else
            g(i,j)=L_B;
        end
    end
end
figure(6)
imshow(uint8(g))
title('Binary Gradient')






function y=gra(x,h1,h2)
    y = zeros(size(x));
    for i = 1:size(x, 1) - 1
        for j = 1:size(x, 2) - 1
  
            % Gradient approximations
             Gx = sum(sum(h1.*x(i:i+1, j:j+1)));
             Gy = sum(sum(h2.*x(i:i+1, j:j+1)));
                 
            % Calculate magnitude of vector
            y(i, j) = sqrt(Gx.^2 + Gy.^2);
         
         end
    end
end
   




