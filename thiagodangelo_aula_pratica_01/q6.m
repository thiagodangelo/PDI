clear all;
clc;
% Exercicio 6
im1 = imread('lena.png');
figure;
imshow(im1);

nimg = rotacao(im1, 45);
figure;
imshow(nimg);