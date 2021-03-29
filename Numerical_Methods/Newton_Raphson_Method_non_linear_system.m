% Gudi Vara Prasad
% 19BCE7048
% LAB- L57+L58
clc
clear all
clear figures
format 'short'
tic
syms x y

% Newton Raphson Method : non linear system

disp('Solution using Newton Raphson Method - Non linear system')

f =x.^2+x*y+7;  % given function f
g =x.^3+y.^3+9;  % given function g
varf = symvar(f); 
Lenf = length(varf);
varg = symvar(f); 
Leng = length(varg);

if Lenf<=Leng
    var=varf;
else
    var=varg;
end

F = [f g];
I = [1.5 1.5];
J = jacobian(F, var)
N = 20;   % maximum value of iterations
Tol = 0.0001;  % error : epsilon value
Inv_J=inv(J)
if Inv_J==0
    disp('Not possible because, jacobian inverse doesnot exist')
else
    for i=1:N
        fprintf('Iteration=%d\n',i)
        F1=double(subs(f,varf,I));
        G1=double(subs(g,varg,I));
        J1=subs(Inv_J,var,I);
        FF=[-F1;-G1];
        x=double(I'+J1*FF)
        if  abs(x(1)-I(1)) < Tol && abs(x(2)-I(2)) < Tol
            break
        end
        I = x';
        if i>N
            disp('Netwon Raphson Method fails !!!')
        end
    end
end
toc