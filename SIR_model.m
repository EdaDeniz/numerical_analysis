function SIR_model

clc;
clear all;

[T,Y] = ode45(@Bqfun1,[0 720], [50 1 0]);
 
%plot of S
plot(T,Y(:,1), 'c-', 'linewidth', 1.5)
hold on
%plot of I
plot(T,Y(:,2), 'g-' , 'linewidth', 1.5)
hold on
%plot of R
plot(T,Y(:,3), 'm-' , 'linewidth', 1.5) 
hold on
xlim([0 720])
title('SIR Plot for ß = 0.0006');
xlabel('t', 'fontsize', 12)
ylabel('S,I,R', 'fontsize', 12)
legend('S','I','R' )
 
function dy1 = Bqfun1(t,y)

beta = 0.0006; % ß will be 0.0026 and 0.0013 
gamma = 0.0083;
dy1 = [-beta*y(1)*y(2) ; beta*y(1)*y(2)-gamma*y(2) ; gamma*y(2)]