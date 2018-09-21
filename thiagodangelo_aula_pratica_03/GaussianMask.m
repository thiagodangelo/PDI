function mask = GaussianMask(lin, col, sigma)
if nargin < 3
    sigma = 0.5;
end
x = 0 : lin-1;
y = 0 : col-1;

x = x - floor(lin/2);
y = y - floor(col/2);

[X, Y] = ndgrid(x, y);

mask = exp( -(X.^2 + Y.^2)/(2*sigma^2) ) / (2*sigma^2*pi);