clear all;
close all;
clc;

% Exercício 01
img = imread('lena.png');
figure,
imshow(img);

% Converte de RGB para HSI
hsi = rgb2hsi(img);
figure,
imshow(hsi);

% Converte de HSI para RGB
rgb = hsi2rgb(hsi);
figure,
imshow(rgb);