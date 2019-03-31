function J = fdJacob2D( l, theta, alpha)

t11 = theta + [alpha;0];
t12 = theta - [alpha;0];
t21 = theta + [0;alpha];
t22 = theta - [0;alpha];

J1 = (evalRobot2D(l,t11)-evalRobot2D(l,t12))/(2*alpha);
J2 = (evalRobot2D(l,t21)-evalRobot2D(l,t22))/(2*alpha);
 
J = [J1 J2];

end
