function [U, V] = get_fourier_grid(M, N)
  u = 1:M;
  v = 1:N;
  u = u - M/2;
  v = v - N/2;
  [U, V] = meshgrid(u, v); 
end