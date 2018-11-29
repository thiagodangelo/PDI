function hsi = rgb2hsi(rgb)
  [lin, col, ~] = size(rgb);
  rgb = im2double(rgb);
  R = rgb(:, :, 1);
  G = rgb(:, :, 2);
  B = rgb(:, :, 3);
  
  % Cálculo de theta
  arg = 0.5 * ((R - G) + (R - B))./sqrt((R - G).^2 + (R - B).*(G - B));
  theta = acosd(arg);
  
  % Cálculo da Matiz (H)   
  H = zeros([lin, col]);
  H(B <= G) = theta(B <= G);
  H(B > G) =  360 - theta(B > G);
  H = H / 360.0;
  
  % Cálculo da Saturação (S)
  S = 1 - min(rgb, [], 3) ./ mean(rgb, 3);
  
  % Cálculo da Intensidade (I)
  I = mean(rgb, 3);
  
  % Imagem no espaço de cores HSI
  hsi = cat(3, H, S, I);
end