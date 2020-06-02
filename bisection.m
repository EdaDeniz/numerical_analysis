function bisection

% f = your function
%a = lower, b = upper
%tol = error tolerance

f = @(x) ((65*x^4)-(72*x^3)-(1.5*x^2)-(16.5*x)-1);
a=0;
b=1;
tol=0.0001;
i=0;
count =0;
fprintf("\nIterations:\n")
while (abs(a-b)> tol)
 fa=f(a);
 fb=f(b);
 c=(a+b)/2;
 fc=f(c);
 count = count+1;
 fprintf('Iteration %d : %13.4f %13.4f %13.4f %13.4f \n',count, a,b,c,fc)
 cVals(count) = c;
 if (fa *fc > 0)
 a=c;
 else
 b=c;
 end
 i=i+1;
plot(cVals,'p-','MarkerFaceColor',[1 0 1], 'MarkerEdgeColor','r');
end
fprintf('After %d iteration the root is finding', count);

