function theta = invKin3D( M, theta0, pos)
% Newton    
    x = theta0;                 %initial guess
  %   pos = [ pos(1,1)
  %           pos(2,1)
  %           pos(3,1)
  %           1       ];
    for i = 1:500
        [ p, j] = evalRobot3D( M, x );
        
        fx = p - pos;        
        s = j\(-fx);

        x = x + s;
        
        if abs( p - pos) < 0.0001
            break
        end
    end
    theta = x;
end