function nimg = warp(img)
  [lin, col] = size(img);
  x0 = round(lin / 2);
  for u = 1:lin,
    for v = 1:col,
      nx(u, v) = round(sign(u - x0) * (u - x0)^2 / x0 + x0);
      ny(u, v) = v; 
    end
  end
  nimg = interp2(img, ny, nx);
end