clear all;
close all;
clc;

% Exerc�cio 04
A = imread('letra.png');
figure,
imshow(A);

se = strel('diamond', 1);

nA = skeletonization(A, se);
figure,
imshow(nA);