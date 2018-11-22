clear all;
close all;
clc;

% Exercício 02
A = imread('letraBorda.png');
figure,
imshow(A);
i = 40;
j = 40;
nA = fill_mask(A, i, j);
figure,
imshow(nA);