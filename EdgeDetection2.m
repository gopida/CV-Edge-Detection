
im = imread('Peppers0.jpg');

sobl = fspecial('sobel');
R_image = single((im(:,:,1)));
Ri = sqrt(imfilter(R_image, sobl').^2 + imfilter(R_image, sobl).^2);

G_image = single((im(:,:,2)));
Gi = sqrt(imfilter(G_image, sobl').^2 + imfilter(G_image, sobl).^2);    

B_image = single((im(:,:,3)));
Bi = sqrt(imfilter(B_image, sobl').^2 + imfilter(B_image, sobl).^2);
edgeImg = uint8((Ri+Gi+Bi)/3);
figure, imshow(edgeImg,[]);
