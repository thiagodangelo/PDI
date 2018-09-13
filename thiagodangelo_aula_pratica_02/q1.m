clear all;
close all;
clc;
% Exercício 1

img = imread('lenna.png');
img = im2double(img);
figure, 
imshow(img);

% Efeito de onda
nimg = onda(img);
figure,
imshow(nimg);

% Efeito warp
nimg = warp(img);
figure,
imshow(nimg);
