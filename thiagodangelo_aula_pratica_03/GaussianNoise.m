function nimg = GaussianNoise(img,m_mean,m_var)
if nargin < 2
    m_mean = 0; m_var = 0.01;
end
img_double = double(img);
sizeA = size(img);
nimg_double =  img_double + sqrt(m_var) * randn(sizeA)*255 + m_mean;  
nimg = uint8(nimg_double);
