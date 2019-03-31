clear
close all
m = 3;
X = (0: 0.5: m*pi);

Y = sin(X);
n = 6;


grid = subplot(2,5,1);

for i = 1:10
    X_new = (0: 0.1: 2^(1/i) * m * pi);
    Y_new = polynomial_interp( X, Y, X_new, i );
    
    subplot(2,5,i);
    hold on 
    plot(X_new, Y_new, 'y-', 'lineWidth', 2)
    plot(X_new, sin(X_new), 'r:', 'lineWidth',2)
    hold off
    
    
    
end





