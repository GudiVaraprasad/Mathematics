% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58

clc;
clear all;
close all;
format 'short';
syms x;

tic
% Newton's Backward :

x = input('Enter values of x = ')
y = input('Enter values of y = ')
required = input('Enter required y value for x = ')

n = length(x);
if length(y)~=n
    error('x and y must be same length'); 
end

h = x(2) - x(1);
for i=1:n-1
    nabla(i,1) = y(i+1) - y(i);
end

for j=2:n-1
    for i = 1:n-j
        nabla(i,j) = nabla(i+1,j-1)-nabla(i,j-1);
    end
end
p = (required-x(n))/h;
product = 1;
y = y(n);

for k = 1:n-1
    product = product*(p+k-1)/k;
    y = y+product*nabla(n-k,k);
end
nabla

fprintf('y value for given x value %d is = ', required)
y

toc