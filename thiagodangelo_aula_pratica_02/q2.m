clear all;
close all;
clc;
%Exercício 2

img1 = imread('lennaCompress.png');
img1 = im2double(img1);
figure,
imshow(img1);
figure,
imhist(img1);

img2 = imread('gammaImage.png');
img2 = im2double(img2);
figure,
imshow(img2);
figure,
imhist(img2);


%a) Contrast-stretching
m = 0.5;
E = 8;
nimg1 = contrast_stretching(img1, m, E);
figure,
imshow(nimg1);
figure,
imhist(nimg1);


m = 0.12;
E = 0.5;
nimg2 = contrast_stretching(img2, m, E);
figure,
imshow(nimg2);
figure,
imhist(nimg2);

%b) Power-law (Gamma)
c = 2.5;
lambda = 2;
nimg3 = power_law(img1, c, lambda);
figure,
imshow(nimg3);
figure,
imhist(nimg3);

c = 1;
lambda = 0.5;
nimg4 = power_law(img2, c, lambda);
figure,
imshow(nimg4);
figure,
imhist(nimg4);