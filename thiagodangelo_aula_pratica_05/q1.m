clear all;
close all;
clc;

% Exercício 01
img = imread('lenna_periodico2.png');
figure,
imshow(img);


% Filtro Notch
nimg = notch_filter(img, 10, 40, 40, 40);
figure,
imshow(nimg, []);
