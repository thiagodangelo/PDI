close all;
clear all;
clc;

% Exercício 4
img = imread('mars_moon.png');
[lin, col] = size(img);
figure,
imshow(img);

hist1 = imhist(img);
hist1 = hist1 / (lin*col);
figure,
plot(hist1);

hist2 = load('histograma.txt'); 
figure,
plot(hist2);

chist1 = cumsum(hist1);
chist2 = cumsum(hist2);

M = zeros(1, 256);

for i = 1:length(chist1),
    [~, ind] = min(abs(chist1(i) - chist2));
    M(i) = ind - 1;
end

nimg = uint8(M(img + 1));
figure,
imshow(nimg);

hist3 = imhist(nimg);
hist3 = hist3 / (lin*col);
figure,
plot(hist3);
