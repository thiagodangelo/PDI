clear all;
close all;
clc;

% Exerc�cio 03
img = imread('img.png');
img = rgb2gray(img);
mask = ones(5)*1/25;
figure,
imshow(img);

% Convolu��o sem padding
nimg = conv_freq(img, mask);
figure,
imshow(nimg);

% Convolu��o com padding
[pimg, pmask] = padding(img, mask);
npimg = conv_freq(pimg, pmask);
figure,
imshow(npimg); 


