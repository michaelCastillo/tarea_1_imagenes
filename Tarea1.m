% figure(1)
t=1;
e=-100;
y=0.5;
imageNames = ["./testImages/tigre.png","./testImages/siberiano.png","./testImages/mujer.png","./testImages/Einstein.png"];
imSize = size(imageNames);
resultImages = zeros(imSize);
img = imread("./testImages/tigre.png");
figIndex = 1;
figure(figIndex)
row = 1;
col=1;
for i = 1:imSize(2)
    numRows = imSize(2)/2;
    img = imread(images(i));
    resultImage = dogxFilter(img,1, 10, [5 5],t);
    subplot(numRows,numRows,i);
    imshow(resultImage);
    thresholdImage = exThreshold(resultImage,e,y);
    figure(figIndex+1)
    subplot(numRows,numRows,i)
    imshow(thresholdImage)
end

