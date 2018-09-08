clear all;
clc;
% Exercicio 4
im1 = imread('lena.png');
figure;
imshow(im1);

im2 = imread('im2.png');
figure;
imshow(im2);

[lin, col] = size(im1);

nimg = im1;
nimg(2:2:lin, :, :) = im2(2:2:lin, :, :);
figure;
imshow(nimg);