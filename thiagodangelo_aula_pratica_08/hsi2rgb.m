function rgb = hsi2rgb(hsi)
  [lin, col, ~] = size(hsi);
  H = hsi(:, :, 1);
  S = hsi(:, :, 2);
  I = hsi(:, :, 3);
  H = H * 360;
  
  R = zeros([lin, col]);
  G = R;
  B = R;
  
  % Índices para cada Setor
  indRG = H >= 0 & H < 120;
  indGB = H >= 120 & H < 240;
  indBR = H >= 240 & H < 360;
  
  % Setor RG
  B(indRG) = I(indRG) .* (1 - S(indRG));
  R(indRG) = I(indRG) .* (1 + S(indRG) .* cosd(H(indRG)) ./ cosd(60 - H(indRG)));
  G(indRG) = 3 * I(indRG) - (R(indRG) + B(indRG)); 
  
  % Setor GB
  H = H - 120;
  R(indGB) = I(indGB) .* (1 - S(indGB));
  G(indGB) = I(indGB) .* (1 + S(indGB) .* cosd(H(indGB)) ./ cosd(60 - H(indGB)));
  B(indGB) = 3 * I(indGB) - (R(indGB) + G(indGB)); 
  
  % Setor BR
  H = H - 120;
  G(indBR) = I(indBR) .* (1 - S(indBR));
  B(indBR) = I(indBR) .* (1 + S(indBR) .* cosd(H(indBR)) ./ cosd(60 - H(indBR)));
  R(indBR) = 3 * I(indBR) - (G(indBR) + B(indBR));
 
  % Imagem no espaço de cores RGB
  rgb = cat(3, R, G, B); 
end