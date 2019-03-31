function theta = invKin2D(l, theta0, pos, n, mode)
if mode == 0
%% Newton
    %disp( 'Newton')
    x = theta0;                 %initial guess
    alpha = 0.00001;
    %f = pos;
    fx = f2D( x, l, pos);
    for i = 0:n
        
        J = fdJacob2D( l, x, alpha);
        s = J\(-fx);  
        x = x + s;
        
        if abs( evalRobot2D( l, x) - pos) < 0.0001
            break
        end
        fx = f2D( x, l, pos);
    end
    
else
%% Broyden
    %disp('Broyden')
    x = theta0;
    alpha = 0.00001;
    fx = f2D( x, l, pos);    
    B = fdJacob2D( l, x, alpha);
    for i = 0:n
        temp = fx;
        s = B\(-fx);
        x = x + s;
        fx = f2D( x, l, pos);
        if abs( evalRobot2D( l, x) - pos) < 0.000001
           break  
        end
        
        y = fx - temp;
        B = B + ((y - B * s) * s') / (s'* s);
    end
    
end
    theta = x;
    
end

