function nA = inner_edge(A, se)
    nA = A & ~(imerode(A, se));
end