% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58

clc;
clear all;
close all;
format 'short';

% GaussSeidel: Gauss Seidel method

% input:
% A = coefficient matrix
% b = right hand side vector
% error = stop criterion (default = 0.00001%)
% maxit = max iterations (default = 50)

% output:
% x = solution vector

disp('Gauss Seidel Iterative Method : LINEAR SYSTEMS')

A = [3 2 1;10 20 40;40 50 100];
b =;
error = 0.0001;
maxit =;

[m, n] = size(A);
if m ~= n
  error('Matrix A must be square');
end
C = A;
for i = 1:n
  C(i, i) = 0;
  x(i) = 0;
end
x = x';
for i = 1:n
  C(i, 1:n) = C(i, 1:n) / A(i, i);
end
for i = 1:n
  d(i) = b(i) / A(i, i);
end
iter = 0;
while (1)
  xold = x;
  for i = 1:n
    x(i) = d(i) - C(i, :) * x;
    if x(i) ~= 0
      ea(i) = abs((x(i) - xold(i)) / x(i)) * 100;
    end
  end
  iter = iter + 1;
  if max(ea) <= error | iter >= maxit
    break
  end
end