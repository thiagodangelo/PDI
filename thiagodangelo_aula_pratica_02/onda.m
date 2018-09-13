function nimg = onda(img)
  [lin, col] = size(img);
  for u = 1:lin,
    for v = 1:col,
      nx(u, v) = round(u + 20 * sin(2 * pi * v/80));
      ny(u, v) = v; 
    end
  end
  nimg = interp2(img, ny, nx);
end