% parameters
% % imageNames = ["tigre.png","siberiano.png","Einstein.png","mujer.png"];

 % Woman
%   sigma=0.8;
%   k=1.6;
%   gamma=0.97; %(T)
%   e=-0.1;
%   phi=160;
%   dir="./testImages/";
%   % imageNames = ["tigre.png","siberiano.png","Einstein.png","mujer.png"];
%   imageNames = ["tigre.png","mujer.png"];
%   imSize = size(imageNames);
%   kernelSize = [5 5];


 % Tiger
  sigma=0.95;
  k=1.6;
  gamma=0.97; %(T)
  e=-0.006;
  phi=100;
  dir="./testImages/";
  % imageNames = ["tigre.png","siberiano.png","Einstein.png","mujer.png"];
  imageNames = ["mujer.png","tigre.png"];
  imSize = size(imageNames);
  kernelSize = [20 20];
debug = 1;
numRows = 1;

  sigma_t=0.4;
  k_t=1.6;
  gamma_t=0.818; %(T)
  e_t=0.1;
  phi_t=50;


for i = 1:imSize(2)
    imName = strcat(dir,imageNames(i));
    original = imread(imName); 
    xDogImg = xDog(imName, sigma, k,e,gamma,phi,kernelSize);
    thresholdImage = xDog(imName, sigma_t, k_t,e_t,gamma_t,phi_t,kernelSize);
    if(debug == 1)
        numRows=2;
       dxImage =  Dx(original,sigma,k,gamma,kernelSize);
       dxImage_t =  Dx(original,sigma_t,k_t,gamma_t,kernelSize);
       figure(1), subplot(1,imSize(2),i),imhist(original),title(sprintf('Histograma %s',imageNames(i)));
       figure(1+i),subplot(2,3,4),hist(dxImage_t(:)),title(sprintf('Histograma DoG %s',imageNames(i))); 
       figure(1+i),subplot(2,3,5),imhist(xDogImg(:)),title(sprintf('Histograma DoG %s',imageNames(i))); 
    end
    figure(1+i),subplot(numRows,3,1),imshow(original), xlabel("(a) Original" , 'FontSize', 14);
    figure(1+i),subplot(numRows,3,2),imshow(xDogImg),xlabel("(b) XDoG" , 'FontSize', 14);
    figure(1+i),subplot(1,3,3),imshow(thresholdImage),xlabel("(c) XDoG Threshold" , 'FontSize', 14);
    
end
