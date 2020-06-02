function secant
syms x
f = @(x) (exp(x) + 2 .^(-x) + 2 * cos(x) - 6);
x0 = 1;
x1 = 1.5;
x(1) = x0;
x(2) = x1;
n = 1;
tol = 10.^(-3); % and try it for 10^(-5)
errorquest2a = 100;
while errorquest2a>tol
    
    aba = double(f(x(n+1)));
    ana = double(f(x(n)));
    x(n+2) = x(n+1) - ((aba * (x(n+1)-x(n)))/(aba-ana));
    errorquest2a = double(abs(x(n+2)-x(n+1))/x(n+2));
    n = n + 1;
    
end

fprintf('After %d iterations approximate root is: %f',n,x(n+1))

x = 1:0.01:2;
fonk = exp(x) + 2 .^(-x) + 2 * cos(x) - 6;
plot(x,fonk,'p')
grid

end