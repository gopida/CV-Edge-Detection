clear all;
clc;

img = rgb2gray(imread('flowers.jpg'));
[rowSize colSize] = size(img); 
pixpercent = rowSize * colSize * 2/100;

switcher = 0;
% randomly adding salt and pepper noise
for looper=1:pixpercent
    randRow = randi([1,rowSize],1);
    randCol = randi([1,colSize],1);
    if switcher == 0
        img(randRow, randCol) = 0;
        switcher = 1;
    elseif switcher == 1
        img(randRow, randCol) = 255;
        switcher = 0;
    end
end

filterdImg = medfilt2(img, [7,7]);

sobl = fspecial('sobel');
imgEdge = imfilter(img, sobl) + imfilter(img, sobl');
filterdImgEdge = imfilter(filterdImg, sobl) + imfilter(filterdImg, sobl');

figure, imshow(img);
figure, imshow(filterdImg);
figure, imshow(imgEdge);
figure, imshow(filterdImgEdge/2);