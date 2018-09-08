function nimg = rotacao(img, ang)
  s = size(img);
  if length(s) == 2,
    [lin, col] = size(img);
  elseif length(s) == 3,
    [lin, col, chn] = size(img);
  end
  matT1 = [1 0 -lin/2; 0 1 -col/2; 0 0 1];
  matR = [cosd(ang) -sind(ang) 0; ...
          sind(ang)  cosd(ang) 0; ...
          0            0       1];
  matT2 = [1 0 lin/2; 0 1 col/2; 0 0 1];
  matT = matT2 * matR * matT1;
  nimg = zeros(size(img));
  
 for x = 1 : lin,
   for y = 1 : col,
     coord = matT * [x; y; 1];
     nX = round(coord(1));
     nY = round(coord(2));
     if nX > 0 && nX <= lin && nY > 0 && nY <= col,
       if length(s) == 2,
         nimg(nX, nY) = img(x, y);
       elseif length(s) == 3,
         nimg(nX, nY, :) = img(x, y, :);
       end
     end
   end
 end
 nimg = uint8(nimg); 
end