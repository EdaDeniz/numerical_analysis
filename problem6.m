clc;
clear all;

%Our function
f = @(x) exp(x);
% d=1,2,3
d =1:3;
% h=0.1, 0.01, 0.001 
h = 10.^(-d);
%the value in the question
x = 2.3;

%%%%% PART 1 %%%%%

fprintf('\nCentral approximation for h=0.1, 0.01 & 0.001:  ');
for i=1:length(h)
    fprintf('\n For h = 10^(-%2d):\t%.9f\t%.9f\t%.9f\n',d(i), centeredAppr(f,x,h(i)));
end

%Also we can calculate backward&forward approximations
fprintf("\n\n*******\n");
fprintf('\nBackward approximation:');
for i=1:length(h)
    fprintf('\n For h = 10^(-%2d):\t%.9f\t%.9f\t%.9f\n',d(i), backwardAppr(f,x,h(i)));
end
fprintf("\n\n*******\n");
fprintf('\nForward approximation:');
for i=1:length(h)
    fprintf('\n For h = 10^(-%2d):\t%.9f\t%.9f\t%.9f\n',d(i), forwardAppr(f,x,h(i)));
end

%%%%% PART 2 %%%%%
fprintf("\n\n***** PART 2 ***\n");

fprintf("\nThe actual value is  %.9f\n",actVal);
fprintf("Let compare fith the value f'(2.3) = exp(2.3)")

for i=1:length(h)
    fprintf('\n For h = 10^(-%2d):\t%.9f\t%.9f\t%.9f\n',d(i), abs(centeredAppr(f,x,h(i))-actVal));
end


%%%%% PART 3 %%%%%
fprintf("\n\n***** PART 3 ***\n");
fprintf(" \n--> The bounds of truncation error <--\n");


for i=1:length(h)
    trun = abs((thirdDer()/6)*h(i)^2);

    fprintf('\n For h = 10^(-%2d) the truncation error:\t%.9f\t\n',d(i),trun);
end

%Third derivative of f function
function y=thirdDer()
    y = 11.02317638;
end
%Actual value of the function y
function y=actVal()
a = sym('2.3');
%dif(f(x)) = exp(x)
y = exp(a);
end

%forward appr. func.
function y=forwardAppr(f,x,h)
y=(f(x+h)-f(x))/h;
end

%centered appr. func.
function y=centeredAppr(f,x,h)
y=(f(x+h)-f(x-h))/(2*h);
end

%backward appr. func.
function y=backwardAppr(f,x,h)
y=(-f(x+2*h)+4*f(x+h)-3*f(x))/(2*h);
end
