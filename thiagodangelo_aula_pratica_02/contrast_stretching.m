function nimg = contrast_stretching(img, m, E)
  nimg = 1 ./ (1 + (m ./ img).^E);
end