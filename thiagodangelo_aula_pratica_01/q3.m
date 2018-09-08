clear all;
clc;
% Exercicio 3
x = [2 5 1 6 2 3 4];
% x original
disp(x)

ind = [1:2:length(x)];
x(ind) = x(ind) + 3;
% x apos somar 3 nos componentes com indice impar
disp(x);