function newton()
%our inputs
%f=function
%df=differantial of f
%x0=initial value

f = @(x) ((65*x^4)-(72*x^3)-(1.5*x^2)-(16.5*x)-1);
df = @(x) ((260*x^3)-(216*x^3)-(3*x)-(16.5));
x0 = 0.1; 
N = 10; 
tol = 0.0001;

% Set initial guess
x(1) = x0;
n = 2; 
final = N + 1; 
count = 0;

fprintf("Iterations:\n")
while (n <= N + 1)
  fe = f(x(n - 1));
  fpe = df(x(n - 1));
  x(n) = x(n - 1) - fe/fpe;
fprintf('%20g %20g\n', x(n), abs(fe));

  if (abs(fe) <= tol)
    final = n; 
    break;
  end
  n = n + 1;
  count = count +1;
end
plot(0:final - 1,x(1:final),'p-','MarkerFaceColor',[1 0 1], 'MarkerEdgeColor','r')
title('Solution:')
xlabel('Iterations')
ylabel('X')

fprintf('--> After %d iteration the root is finding <--', count);
end