clear all;
close all;
clc;

% Exercício 02
img = imread('lenna_periodico2.png');
figure,
imshow(img);


% Filtro Ideal
nimg_i = ideal_filter(img, 60, 20);
figure,
imshow(nimg_i);

% Filtro Butterworth
nimg_b = butterworth_filter(img, 10, 60, 20);
figure,
imshow(nimg_b);

% Filtro Gaussiano
nimg_g = gaussian_filter(img, 60, 50);
figure,
imshow(nimg_g);
