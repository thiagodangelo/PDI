function [nimg, figs] = noise_sum(img, n)
  for i = 1 : n     
   figs(:,:,i) = imnoise(img, 'gaussian');     
  end
  i_med = ceil(n / 2);
  figs = sort(figs, 3);
  nimg = uint8(figs(:,:, i_med));
 end