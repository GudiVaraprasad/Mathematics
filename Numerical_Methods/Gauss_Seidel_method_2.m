% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58

clc;
clear all;
close all;
format 'short';
syms x;

% Gauss-seidel iteration method to approximate the solution

% input:
% A = coefficient matrix
% b = right hand side vector
% Tol = stopping criteria
% maxIter = max iterations

% output:
% x = solution vector

disp('Gauss Seidel Iterative Method : LINEAR SYSTEMS')

tic
A = [5 -2 3;-3 9 1; 2 -1 -7]
[m, n] = size(A);
if m ~= n
  error('Matrix A must be a square matrix');
else
  b = [-1;2;3]
  Tol = 0.00001;
  Iter = 5;
  maxIter = 20;
  
  D = diag(diag(A))
  L = tril(A) - D
  U = triu(A) - D
  LDinv = inv(L + D);
  H = -LDinv * U;
  C = LDinv*b;
  x = zeros(n,1);
  
  % Formula : x(k+1) = −(L + D)^-1 * U*x(k) + (L + D)^-1 * b
  % Simplify : x(k+1) = H * x(k) + C
  
  for k = 1:Iter
    fprintf('After Iteration - %d : \n',k)
    x(:,k + 1) = H * x(:,k) + C
    
    if max(x) <= Tol | Iter >= maxIter
      break
    end
  end
end
%----Solution-----
fprintf("Final Solution vector = ")
x(:,Iter)
toc

% SOLUTION OF THE PROBLEM :

