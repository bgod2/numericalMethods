close all
t = 0:0.1:2*pi;
x = [cos(t); sin(t)];
%plot(x(1,:),x(2,:))
axis equal

A = [1 .2
     .2 1];
y = A*x
%plot(y(1,:),y(2,:))
axis equal
 
[X,D] = eig(A)
hold on
plot(D(1,1)*[0 X(1,1)],D(1,1)*[0 X(2,1)],'g')
plot(D(2,2)*[0 X(1,2)],D(2,2)*[0 X(2,2)],'r')
hold off