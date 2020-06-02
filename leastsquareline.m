function leastsquareline

%Find the least-squares line y = f(x) = Ax + B for the data and
%calculate the maximum error, average error where
%A) the data X = [−6, −2, 0, 2, 6], Y = [7, 5, 3, 2, 0]

X = [-6 -2 0 2 6];
Y = [7; 5; 3; 2; 0];

plot(X, Y', 'mp')
coeffs = polyfit(X, Y', 1);

fittedX = linspace(min(X), max(X'), 200);

fittedY = polyval(coeffs, fittedX);

hold on;
title('Problem 4');
plot(fittedX, fittedY, 'c--');
legend('Data','The least-squares line','Location','Best')

end