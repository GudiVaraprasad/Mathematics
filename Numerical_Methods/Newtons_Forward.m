% Gudi Vara Prasad
% 19BCE7048

% LAB- L57+L58

clc;
clear all;
close all;
format 'short';
syms x;

tic
% Newton's Forward :

x = input('Enter values of x = ')
y = input('Enter values of y = ')
required = input('Enter required y value for x = ')

n = length(x);
if length(y)~=n
    error('x and y must be same length'); 
end

h = x(2) - x(1);
for i=1:n-1
    delta(i,1) = y(i+1) - y(i);
end

for j=2:n-1
    for i = 1:n-j
        delta(i,j) = delta(i+1,j-1)-delta(i,j-1);
    end
end
p = (required-x(1))/h;
product = 1;
y = y(1);
for r = 1:n-1
    product = product*(p-r+1)/r;
    y = y+product*delta(1,r);
end
delta
fprintf('y value for given x value %d is = ', required)
y

toc