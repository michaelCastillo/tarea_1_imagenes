function [imageWithDog] = dogFilter(imageName,sigma,k,kernelSize)

image = imread(imageName);
imgray = im2gray(image);
h1 = fspecial('gaussian', kernelSize, sigma);
h2 = fspecial('gaussian', kernelSize, sigma*k);
figure(1);
gauss1 = conv2(double(imgray), h1, 'same');
gauss2 =conv2(double(imgray), h2, 'same');
% subplot(1,2,1);
% plot(imhist(gauss1))
% subplot(1,2,2);
% plot(imhist(gauss2))
imageWithDog = gauss1 - gauss2;
end

