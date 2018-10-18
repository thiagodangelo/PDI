function [U, V] = get_grid(M, N)
  u = 1:M;
  v = 1:N;
  [U, V] = meshgrid(u, v); 
end