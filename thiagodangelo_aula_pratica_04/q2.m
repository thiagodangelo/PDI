clear all;
close all;
clc;

% Exercício 02
imgA = imread('letra_A0.png');
imgB = imread('letra_B.png');
imgBt = imread('letra_Bt.png');
imgV = imread('letra_V.png');

fimgA = fft2(imgA);
fimgA = fftshift(fimgA);

fimgB = fft2(imgB);
fimgB = fftshift(fimgB);

fimgBt = fft2(imgBt);
fimgBt = fftshift(fimgBt);

fimgV = fft2(imgV);
fimgV = fftshift(fimgV);

% a)
imgA15 = imrotate(imgA, 15, 'cubic', 'crop');
fimgA15 = fft2(imgA15);
fimgA15 = fftshift(fimgA15);

imgA30 = imrotate(imgA, 30, 'cubic', 'crop');
fimgA30 = fft2(imgA30);
fimgA30 = fftshift(fimgA30);

imgA45 = imrotate(imgA, 45, 'cubic', 'crop');
fimgA45 = fft2(imgA45);
fimgA45 = fftshift(fimgA45);

imgA60 = imrotate(imgA, 60, 'cubic', 'crop');
fimgA60 = fft2(imgA60);
fimgA60 = fftshift(fimgA60);

c1 = hist_inter(abs(fimgA), abs(fimgA15))
c2 = hist_inter(abs(fimgA), abs(fimgA30))
c3 = hist_inter(abs(fimgA), abs(fimgA45))
c4 = hist_inter(abs(fimgA), abs(fimgA60))

% b)
c5 = hist_inter(abs(fimgA), abs(fimgB))
c6 = hist_inter(abs(fimgA), abs(fimgV))

% c)
c7 = hist_inter(abs(fimgB), abs(fimgBt))

% d)
pimgA = polartrans(imgA, size(imgA,1), size(imgA,2));
fpimgA = fft2(pimgA);
fpimgA = fftshift(fpimgA);

pimgA15 = polartrans(imgA15, size(imgA15,1), size(imgA15,2));
fpimgA15 = fft2(pimgA15);
fpimgA15 = fftshift(fpimgA15);
c8 = hist_inter(abs(fpimgA), abs(fpimgA15))

pimgA30 = polartrans(imgA30, size(imgA30,1), size(imgA30,2));
fpimgA30 = fft2(pimgA30);
fpimgA30 = fftshift(fpimgA30);
c9 = hist_inter(abs(fpimgA), abs(fpimgA30))

pimgA45 = polartrans(imgA45, size(imgA45,1), size(imgA45,2));
fpimgA45 = fft2(pimgA45);
fpimgA45 = fftshift(fpimgA45);
c10 = hist_inter(abs(fpimgA), abs(fpimgA45))

pimgA60 = polartrans(imgA60, size(imgA60,1), size(imgA60,2));
fpimgA60 = fft2(pimgA60);
fpimgA60 = fftshift(fpimgA60);
c11 = hist_inter(abs(fpimgA), abs(fpimgA60))

pimgB = polartrans(imgB, size(imgB,1), size(imgB,2));
fpimgB = fft2(pimgB);
fpimgB = fftshift(fpimgB);
c12 = hist_inter(abs(fpimgA), abs(fpimgB))

pimgV = polartrans(imgV, size(imgV,1), size(imgV,2));
fpimgV = fft2(pimgV);
fpimgV = fftshift(fpimgV);
c13 = hist_inter(abs(fpimgA), abs(fpimgV))

% As similaridades entre a imagem A e as imagens rotacionadas de A ficaram muito 
% próximas de 1, enquanto que a similaridade entre a imagem A e as imagens B e V
% ficaram menores.
