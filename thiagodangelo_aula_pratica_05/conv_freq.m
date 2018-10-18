function nimg = conv_freq(img, mask)
  img = double(img);
  [M, N] = size(img);
  nmask = zeros(M, N);
  nmask(1 : size(mask,1), 1 : size(mask,2)) = mask;
  nimg = fft2(img) .* fft2(nmask);
  nimg = abs(ifft2(nimg));
  nimg = uint8(nimg);
end