close all;
clear all;
clc;


%% Binaryzation
graylevel = graythresh(G);
BinImage = imbinarize(G,graylevel);
subplot(1,3,3);
imshow(BinImage);
title('Binaryzed image')


