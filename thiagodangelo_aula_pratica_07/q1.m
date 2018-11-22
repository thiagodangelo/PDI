clear all;
close all;
clc;

% Exercício 01
t = imread('coins.png');
t = t(:,:,1);
[row, col] = size(t);
[x, y] = meshgrid(1 : row, 1 : col);
t2 = double(t) .* ((x + y) / 2 + 64) + x + y;
t3= uint8(255 * mat2gray(t2));
figure,
imshow(t3);
row_r = 5;
col_r = 5;
row_k = row / row_r;
col_k = col / col_r;
nmask = zeros(size(t3));
n0 = 1;
for i = 1:row_r
    n = round(i * row_k);
    m0 = 1;
    for j = 1:col_r
        m = round(j * col_k);
        r = t3(n0: n, m0: m);
        th =  graythresh(r);
        nmask(n0: n, m0: m) = im2bw(r, th);
        m0 = m + 1; 
    end
    n0 = n + 1;
end
figure, 
imshow(nmask);

% Os melhores resultados foram alcançados dividindo a imagem em 25 blocos
% de dimensões iguais, sendo 5 blocos por linha e 5 blocos por coluna. 
