clear all;
close all;
clc;

% Exercício 03
A = imread('letra.png');
figure,
imshow(A);

se = strel('diamond', 1);

%a) Bordas internas
Abi = inner_edge(A, se);
figure,
imshow(Abi);

%b) Bordas externas
Abe = outer_edge(A, se);
figure,
imshow(Abe);

%a) Gradiente morfológico
Agm = morph_gradient(A, se);
figure,
imshow(Agm);
