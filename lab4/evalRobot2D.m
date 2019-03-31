function [pos, J] = evalRobot2D( l, theta)
% l = [ l1, l2]'
% theta = [ t1, t2]'
l1 = l(1,1);
l2 = l(2,1);
t1 = theta(1,1);
t2 = theta(2,1);

x = l1 * cos(t1) + l2 * cos( t1 + t2); 
y = l1 * sin(t1) + l2 * sin( t1 + t2);

pos = [ x, y]';

% jacobian [ df1(x)/ dx1  df1(x)/dx2
%            df2(x)/ dx1  df2(x)/dx2 ]

df1x1 = -l1 * sin(t1) + -sin(t1 + t2);
df1x2 = -l2 * sin(t1 + t2);
df2x1 =  l1 * cos(t1) + l2 * cos( t1 + t2); 
df2x2 =  l2 * cos(t1 + t2);

J = [ df1x1 df1x2
      df2x1 df2x2];

end