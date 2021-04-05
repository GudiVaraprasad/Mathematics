% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58

clc;
clear all;
close all;
format 'short';
syms x;

% Lagrange's Interpolation

% input:
% x = independent variable
% y = dependent variable
% value = value of independent variable at which the interpolation is calculated

% output:
% result = interpolated value of dependent variable

x = [5 6 9 11]
y = [12 13 14 16]
value = 10;

n = length(x);
if length(y)~=n
    error('x and y must be same length'); 
end
s = 0;
for i = 1:n
    product = y(i);
    for j = 1:n
        if i ~= j
            product = product*(value-x(j))/(x(i)-x(j));
        end
    end
    s = s+product;
end
result = s;
fprintf('Approximated value at x = %d : ',value)
result