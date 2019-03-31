x = linspace(-4,4 ,10);
y = 3*x.^3 + 2*x.^2 - x + 2 +rand(1,10);
%z = polyval(y,x)
xx = linspace ( -4,4,1003);
yy = 3*xx.^3 + 2*xx.^2 -xx +2;
zz = polyval(yy,xx);
figure(1);



hold on                         %keep all plots on the same figure

plot(x,y,'b-','lineWidth',3) 
%exercise 1---------------------------
for i = 1:3
    P = polyfit(x,y,i);
    n = polyval(P,x);
    plot( x,n)
    
end

figure(2)

hold on
for i = 1:10
    P = polyfit(xx,yy,i);
    n = polyval(P,xx);
    plot(xx,n)
end
plot(xx,yy,'b-','lineWidth',3) 


%exercise 2-----------------------
figure(3)
















