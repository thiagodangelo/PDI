function nimg = power_law(img, c, lambda)
  nimg = c * img.^ lambda;
end