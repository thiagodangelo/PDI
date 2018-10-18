function nimg = gaussian_filter(img, D0, W)
  [M, N] = size(img);
  fimg = fft2(img);
  fimg = fftshift(fimg);
  figure,
  imshow(log(abs(fimg) + 1), []);
  [U, V] = get_fourier_grid(M, N);
  D = (U.^2 + V.^2).^0.5;
  H = 1 - exp(-((D.^2 - D0^2)./(D * W)).^2);
  figure,
  mesh(H);
  nfimg = fimg .* H;
  figure,
  imshow(log(abs(nfimg) + 1), []);
  nimg = ifft2(nfimg);
  nimg = uint8(abs(nimg));
end