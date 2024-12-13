

%% Open image
name = "person10";
A = imread(name,"jpg");  % read the image
figure;
subplot(1,3,1); 
imshow(A);               % show the image as original
title('Original image')

%% Convert to grays scale
G = im2gray(A);
subplot(1,3,2);
imshow(G);
title('Gray scale image')

%% Binaryzation
graylevel = graythresh(G);
BinImage = imbinarize(G,graylevel);
subplot(1,3,3);
imshow(BinImage);
title('Binaryzed image')

%% Write binaryzed image
imwrite(BinImage,"Binary10.jpg");

