function [nimg, nmask] = padding(img, mask)
  [Mi, Ni] = size(img);
  [Mm, Nm] = size(mask);
  M = Mi + Mm - 1;
  N = Ni + Nm - 1;
  nimg = zeros(M, N);
  nimg(1:Mi, 1:Ni) = img;
  nmask = zeros(M, N);
  nmask(1:Mm, 1:Nm) = mask;
end