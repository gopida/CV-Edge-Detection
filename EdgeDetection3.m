clear all;
clc;
image = imread('Peppers0.jpg');
[rnum cnum channel] = size(image);

for x = 2:rnum-1
    for y = 2:cnum-1
    edge_image_x(x,y) = image(x+1,y) - image(x-1,y);
    edge_image_y(x,y) = image(x,y+1) - image(x,y-1);
    end
end

% Magnitude computation
edge_res = sqrt(double(edge_image_x.^2) + double(edge_image_y.^2));

imshow(edge_res,[]);