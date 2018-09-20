close all;
clear all;
clc;

% Exercício 3
img = imread('matches.png');
figure,
imshow(img);

mask = imread('matchMask.png');
figure,
imshow(mask);

inc = 30;

imgR = img;
imgG = img;
imgB = img;

imgR(~mask) = imgR(~mask) + inc;
imgG(~mask) = imgG(~mask) + inc;
imgB(~mask) = imgB(~mask) + 2*inc;


nimg = cat(3, imgR, imgG, imgB);
figure,
imshow(nimg);