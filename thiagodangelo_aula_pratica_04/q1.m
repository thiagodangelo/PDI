clear all;
close all;
clc;

% Exercício 01
img = imread('lennaRuidoP.png');
figure,
imshow(img);

% Filtro da média
mask = fspecial('average');
av_img = imfilter(img, mask);
figure,
imshow(av_img);

% Filtro da mediana
md_img = medfilt2(img);
figure,
imshow(md_img);

% Filtro no domínio da frequência
fimg = fft2(img);
fimg = fftshift(fimg);
figure,
imshow(log(abs(fimg) + 1),[]);
mask = ones(size(fimg));
mask(84:92,84:92) = 0;
mask(166:174,166:174) = 0;
nfimg = fimg .* mask;
figure,
imshow(log(abs(nfimg) + 1),[]);
nimg = ifft2(nfimg);
nimg = uint8(abs(nimg));
figure,
imshow(nimg);

