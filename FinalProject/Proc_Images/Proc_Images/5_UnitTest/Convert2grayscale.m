close all;
clear all;
clc;

%% Convert to grays scale
G = im2gray(A);
subplot(1,3,2);
imshow(G);
title('Gray scale image')

