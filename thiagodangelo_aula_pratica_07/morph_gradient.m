function nA = morph_gradient(A, se)
    nA = (imdilate(A, se)) & ~(imerode(A, se));
end