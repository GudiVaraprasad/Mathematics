% Gudi Vara Prasad
% 19BCE7048
% LAB- L57+L58

clc
clear all
clear figures
syms x

% Newton Raphson Method :

disp('Solution using Newton Raphson Method')

f = @(x) x.^3-3*x.^2+4/3;  % given function
df = @(x) 3*x.^2-6*x;   % differentiation of given function
x(1) = 0.5;    % initial value
N = 10;   % maximum value of iterations
Tol = 0.00001;  % error : epsilon value

% f = @(x) x.^3-5*x+1; % given function
% df = @(x) 3*x.^2-5;  % differentiation of given function
% x(1) = 1;   % initial value
% N = 10;  % maximum value of iterations
% Tol = 0.00001;  % error : epsilon value

for i=1:N
    fx(i)=feval(f,x(i));
    dfx(i)=feval(df,x(i));
    x(i+1)=x(i)-(fx(i)/dfx(i));
    
    if abs(x(i+1)-x(i)) <Tol | abs(fx(i)) <Tol
        diff = double(abs(x(i+1)-x(i)));
        Solution = x(i);
        double(x);
        fprintf('Approx_value = %f at %d-iteration\n',Solution,i)
        break;
    end
end

x_values = double(x)
function_values = double(fx)

x = 0:0.01:1;
f = x.^3-3*x.^2+4/3;
plot(x,f)
