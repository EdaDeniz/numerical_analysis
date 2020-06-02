function lagrange


% Obtain the Lagrange interpolation to find the 4th order polynomial
% in x that passes through the given points (x, y) where
% A) x = [−2, −1, 0, 1, 2], y = sin(x) − 2

clc;
clear all;
%Define point x and point y
pX = [-2 -1 0 1 2];
pY =@(x) (sin(x)-2);


x = linspace(-5,5);
n = size(pX, 2);
L = ones(n, size(x,2));

for i=1:n
    for j=1:n
        if (i~=j)
            L(i,:).*(x-pX(j))./(pX(i)-pX(j));
        end
    end
end

y = 0;
for i=1:n
    y = y + pY(i)*L(i,:);
end
y1 = y;

plot(pX, pY(pX), 'g--p', x, y1, 'm--o');
hold on;

legend('Data','interpolation polynomial','Location','Best')
end 