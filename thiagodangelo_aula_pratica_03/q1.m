close all;
clear all;
clc;

% Exerc�cio 1
img = imread('mars_moon.png');
figure,
imshow(img);

nimg = noise_sum(img, 100);
figure,
imshow(nimg);