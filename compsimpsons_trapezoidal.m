%There is two solution. The first solution is composite simpsons rule
%the second solution is composiite trapezoidal rule.
clc;
clear all;

fprintf("The answer for Composite Simpson Rule:")
disp(compsimp);

fprintf("\n\nThe answer for Composite Trapezoidal Rule:")
display(comptrap);


function T = compsimp
a = -1;
b = 1;
m = 5;
f= @(x) (1/(1+x^2));
h = (b-a)/m;
xi0 = feval(f,a)+feval(f,b);
xi1 = 0;
xi2 = 0;
for i = 1:m-1
x = a+i*h;
if mod(i,2) == 0
xi2 = xi2+feval(f,x);
else
xi1 = xi1+feval(f,x);
end
end
T = h*(xi0+2*xi2+4*xi1)/3;

end
function T = comptrap
a = -1;
b=1;
N = 10;
f = @(x) (1./(1+x.^2));
h = (b-a)/N;
i = 0:N-1;
xi = a+i*h;
xi1 = a+(i+1)*h;
T= (h/2)*sum(f(xi)+f(xi1));
end