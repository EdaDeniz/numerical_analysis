%There is two solution. The first solution is Jacobi's method
%the second solution is Gauss Seidel method. 
clc
clearvars
close all

fprintf("\n\n*-*-*-*-*-*-*-*\n\n");

fprintf("1. For Jacobi:\n\n");
jacobi

fprintf("\n\n*-*-*-*-*-*-*-*\n\n");

fprintf("2. For Gauss Seidel:\n\n");
gaussSeidel

function jacobi()

i = 1;
p0 = 0;
y(i)=p0; 
x(i)=p0;

%we need 3 iterations 
for i=1:3
   
    %I re-arrange the eqns to diagonally dominant
    x(i+1)=(2+2*y(i))/6;  
    y(i+1)=(1+x(i))/3;

end

disp('-----    x   -------');disp(x');
disp('-----    y   -------');disp(y');
end


function gaussSeidel()

i = 1;
y(i)= 0;
x(i)= 0;

%we need 3 iterations
for i=1:3
%I re-arrange the eqns to diagonally dominant
    x(i+1)=(2+2*y(i))/6;  
    y(i+1)=(1+x(i+1))/3;
    
end
disp('-----    x   -------'); disp(x');
disp('-----    y   -------'); disp(y');
end
