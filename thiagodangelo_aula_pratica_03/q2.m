close all;
clear all;
clc;

% Exercício 2
img = imread('mars_moon.png');
figure,
imshow(img);

img_noise = GaussianNoise(img);
figure,
imshow(img_noise);

mask3 = fspecial('average', [3 3]);
nimg_avg3 = imfilter(img_noise, mask3, 'same');
figure,
imshow(nimg_avg3);

mask5 = fspecial('average', [5 5]);
nimg_avg5 = imfilter(img_noise, mask5, 'same');
figure,
imshow(nimg_avg5);

gmask3 = GaussianMask(3, 3);
nimg_gauss3 = imfilter(img_noise, gmask3, 'same');
figure,
imshow(nimg_gauss3);

gmask5 = GaussianMask(5, 5);
nimg_gauss5 = imfilter(img_noise, gmask5, 'same');
figure,
imshow(nimg_gauss5);

