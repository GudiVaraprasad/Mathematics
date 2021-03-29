clc;
clear all;
close all;
format 'short';

% input:
% c = upper diagonal vector
% b = main diagonal vector
% a = lower diagonal vector
% d = right hand side vector

% output:
% x = solution vector

disp('Application 2 of Thomas Algorithm : TRIDIAGONAL SYSTEMS')
tic
% Tri Diagonal Matrix =

 %  -3     1     0     0     0     0     0     0     0
 %   2    -3     1     0     0     0     0     0     0
 %   0     2    -3     1     0     0     0     0     0
 %   0     0     2    -3     1     0     0     0     0
 %   0     0     0     2    -3     1     0     0     0
 %   0     0     0     0     2    -3     1     0     0
 %   0     0     0     0     0     2    -3     1     0
 %   0     0     0     0     0     0     2    -3     1
 %   0     0     0     0     0     0     0     2    -3
 
D = 2;
U = 1;

a = [2 2 2 2 2 2 2 2 0];
b = [-3 -3 -3 -3 -3 -3 -3 -3 -3];
c = [0 1 1 1 1 1 1 1 1];
d = [-160 0 0 0 0 0 0 0 -20];
n=length(b);

% Triangle form
for i = 2:n
    subst = c(i)/b(i-1);
    b(i) = b(i) - subst * c(i-1)
    d(i) = d(i) - subst * d(i-1)
end

% back substitution
x(n) = d(n)/b(n);
for i = n-1:-1:1
    x(i) = (d(i)-c(i)*x(i+1))/b(i);
end
fprintf("Concentration values =")
x
toc

% SOLUTION OF THE PROBLEM : 
