clear all;
clc;
% Exercicio 5
im1 = imread('lena.png');
figure;
imshow(im1);

[lin, col] = size(im1);

mirror_v  = fliplr(im1);
figure;
imshow(mirror_v);

mirror_h = flipud(mirror_v);
figure;
imshow(mirror_h);