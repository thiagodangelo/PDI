function images = read_images(path, ext)
  files = dir([path '*' ext]);
  n = length(files);
  for i = 1: n
    images(:,:, i) = imread([path, files(i, 1).name]);
  end
end