function nA = skeletonization(A, se)
    erosions(:,:, 1) = A;
    openings(:,:, 1) = imopen(erosions(:,:, 1), se);
    differences(:, :, 1) = erosions(:,:, 1) & ~openings(:,:, 1);
    nA = differences(:, :, 1);
    i = 1;
    while ~all(all(~openings(:, :, i)))
        i = i + 1;
        erosions(:, :, i) = imerode(erosions(:, :, i - 1), se);
        openings(:, :, i) = imopen(erosions(:, :, i), se);
        differences(:, :, i) = erosions(:, :, i) & ~openings(:, :, i);
        nA = nA | differences(:, :, i);
    end
end