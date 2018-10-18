clear all;
close all;
clc;

% Exercício 03
img = imread('img.png');
img = rgb2gray(img);
mask = ones(5)*1/25;
figure,
imshow(img);

% Convolução sem padding
nimg = conv_freq(img, mask);
figure,
imshow(nimg);

% Convolução com padding
[pimg, pmask] = padding(img, mask);
npimg = conv_freq(pimg, pmask);
figure,
imshow(npimg); 


