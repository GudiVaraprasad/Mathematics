% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58

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

disp('Application of Thomas Algorithm : TRIDIAGONAL SYSTEMS')

tic
a = [1 1 1 0];
b = [-2.6 -2.6 -2.6 -2.6];
c = [0 1 1 1];
d = [-240 0 0 -150];
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
fprintf("Solution vector =")
x
toc

% SOLUTION OF THE PROBLEM : 
