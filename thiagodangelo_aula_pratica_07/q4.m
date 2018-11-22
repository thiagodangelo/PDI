clear all;
close all;
clc;

% Exercício 04
A = imread('letra.png');
figure,
imshow(A);

se = strel('diamond', 1);

nA = skeletonization(A, se);
figure,
imshow(nA);