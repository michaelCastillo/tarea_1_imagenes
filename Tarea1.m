% figure(1)
dogImage = dogFilter("./testImages/tigre.png",0.5, 10, [10 10]);
% imshow(dogImage)
% figure(2)
dogImageSib = dogFilter("./testImages/siberiano.png",0.5, 10, [10 10]);
% imshow(dogImageSib)
% figure(3)
dogImageWom = dogFilter("./testImages/mujer.png",0.5, 10, [10 10]);
% imshow(dogImageWom)
% figure(4)
dogImageEins = dogFilter("./testImages/Einstein.png",0.5, 10, [15 15]);
% imshow(dogImageEins)
figure(1)
subplot(2,2,1)
imshow(dogImage)
subplot(2,2,2)
imshow(dogImageSib)
subplot(2,2,3)
imshow(dogImageWom)
subplot(2,2,4)
imshow(dogImageEins)