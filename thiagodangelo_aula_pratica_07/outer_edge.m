function nA = outer_edge(A, se)
    nA = (imdilate(A, se)) & ~A;
end