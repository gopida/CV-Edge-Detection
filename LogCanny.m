clear all;
clc;
image = rgb2gray(imread('Peppers0.jpg'));
mx = fspecial('log',[3,3]);
my = mx';
gradX = conv2(image,mx,'same');
gradY = conv2(image,my,'same');
lap_res = sqrt(gradX.^2 + gradY.^2);
figure,imshow(lap_res,[]);
title('LOG');    

%canny 

cannyEdge = edge(image,'canny',0.17);
figure,imshow(cannyEdge,[]);
title('Canny');  