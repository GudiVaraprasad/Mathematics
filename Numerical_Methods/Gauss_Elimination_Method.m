% Gudi Vara Prasad
% 19BCE7048
% LAB- L57+L58

clc;
clear all;
close all;

tic
A= [10 -1 2;1 10 -1;2 3 20];
b= [4;3;7];
[m,n] = size(A);
AM = [A b];

for i=1:n 
    for j=1:n
        if(j>i)
            AM(j,:) = AM(j,:) - AM(j,i) * AM(i,:)/AM(i,i)
        end
    end
end
C = AM(1:n,1:n);
b = AM(:,n+1);
x = zeros(1,n);
x(n) = b(n)/AM(n,n);

for i=n-1:-1:1
    sum=0;
    for j = i:n-1
        sum = sum + AM(i,j+1)*x(j+1);
    end
    x(i) = (b(i)-sum)/AM(i,i);
end
x
toc

% Gauss Elimination Method : linear system of Equations Solution :