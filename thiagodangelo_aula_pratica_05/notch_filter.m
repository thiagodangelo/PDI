function nimg = notch_filter(img, n, D0, u0, v0)
  [M, N] = size(img);
  fimg = fft2(img);
  fimg = fftshift(fimg);
  figure,
  imshow(log(abs(fimg) + 1), []);
  [U, V] = get_grid(M, N);
  D1 = ((U - M/2 - u0).^2+(V - N/2 - v0).^2).^0.5;
  D2 = ((U - M/2 + u0).^2+(V - N/2 + v0).^2).^0.5;
  H = 1./(1 + (D0^2 ./ (D1 .* D2)).^n);
  figure,
  mesh(H);
  nfimg = fimg .* H;
  figure,
  imshow(log(abs(nfimg) + 1), []);
  nimg = ifft2(nfimg);
  nimg = uint8(abs(nimg));  
end