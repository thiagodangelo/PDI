clear all;
close all;
clc;

% Exercícios 1, 2, 3 e 4

path = 'numbers/';
ext = 'jpg';
images = read_images(path, ext);

[lin, col, nbs] = size(images);

features = zeros([4800, 7]);
labels = zeros([4800, 1]);

angles = linspace(-10, 10, 20);
scales = [0.5, 0.75, 1, 1.25, 1.5, 2];
noises = [0, 0.01, 0.02, 0.03];
idx = 0;
for i = 1 : nbs 
  for i_ang = 1 : length(angles)
    imgr = imrotate(images(:,:,i), angles(i_ang), 'bicubic');
    for i_sca = 1 : length(scales)
      imgs = imresize(imgr, scales(i_sca));
      for i_noi = 1 : length(noises)
        imgn = imnoise(imgs, 'salt & pepper', noises(i_noi));
        idx = idx + 1;
        features(idx, :) = humoments(imgn);
        labels(idx, 1) = i - 1;        
      end
    end
  end
end

save('data.mat', 'features', 'labels');