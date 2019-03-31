function y = f2D(theta,l,pos)
    
    l1 = l(1,1);
    l2 = l(2,1);
    t1 = theta(1,1);
    t2 = theta(2,1); 
    p1 = pos(1,1);
    p2 = pos(2,1);
    
    x1 = (l1 * cos(t1) + l2 * cos( t1 + t2)) - p1; 
    x2 = (l1 * sin(t1) + l2 * sin( t1 + t2)) - p2;
    y = [x1 x2]';
end