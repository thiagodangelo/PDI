clear all;
clc;
% Exercicio 2
% a) Em laco:
i = 1;
for x = -1 : 0.1 : 3,
  y(i) = x^2 + 3*x + 2;
  i = i + 1;
end

disp(y)

% b) Com vetor:
x = [-1 : 0.1 : 3];
y = x.^2 + 3*x + 2;

disp(y)