% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58
clc;
clear all;
close all;
format 'short';

% input:
% A = coefficient matrix
% B = right hand side vector

% output:
% x = solution vector

disp('Application of LU Decomposition')
tic

A = [3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10]
B = [7.85; -19.3; 71.4]

[m, n] = size(A);
if m ~= n, error('Matrix A must be square'); end

% Decomposition of matrix into L and U :

L=zeros(m,m);
U=zeros(m,m);
for i=1:m
    % Finding L
   for k=1:i-1
       L(i,k)=A(i,k);
       for j=1:k-1
           L(i,k)= L(i,k)-L(i,j)*U(j,k);
       end
       L(i,k) = L(i,k)/U(k,k);
   end
   
   % Finding U
   for k=i:m
       U(i,k) = A(i,k);
       for j=1:i-1
           U(i,k)= U(i,k)-L(i,j)*U(j,k);
       end
   end
end
for i=1:m
    L(i,i)=1;
end

% Program shows U and L U L :
% Now use a vector y to solve 'Ly=b' :

y=zeros(m,1);
y(1)=B(1)/L(1,1);
for i=2:m
    y(i)=-L(i,1)*y(1);
    for k=2:i-1
        y(i)=y(i)-L(i,k)*y(k);
        y(i)=(B(i)+y(i))/L(i,i);
    end
end
fprintf("Lower Decomposition Traingle = ")
L
fprintf("Upper Decomposition Traingle = ")
U

% Now we use this y to solve Ux = y
% Back substitution :
x = zeros(n, 1);
AM = [U B];
x(n) = AM(n, n+1) / AM(n, n);
for i = n - 1: - 1:1
    x(i) = (AM(i, n+1) - AM(i, i + 1:n) * x(i + 1:n)) / AM(i, i);
end
fprintf("Solution of the system is = ")
x

toc