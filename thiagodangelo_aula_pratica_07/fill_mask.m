function nA = fill_mask(A, i, j)
    [row, col] = size(A);
    area = row * col;
    se = strel('diamond', 1);
    Ac = ~A;
    X = zeros(size(A));
    Xk = X;
    Xk(i-1:i+1, j-1:j+1) = 1;
    cnt = 0;
    while sum(sum(Xk == X)) ~= area
        X = Xk;
        Xk = imdilate(X, se) & Ac;
        cnt = cnt + 1;
    end
    nA = A | X;
end