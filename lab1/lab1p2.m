disp(' ex 2.13')
A1 = [1,2,3; ...
     4,4,2; ...
     4,6,4]
b1 = [3,6,10]'


[L, U]  = myLU( A );

y1 = fwdSub( L, b)
x1 = backSub( U, y)

disp('my example')
A2 = [ -1, 5, 1; ...
    4, -21, -7; ...
    -2, 9, -3]

b2 = [1,3,2]

[L1, U1]  = myLU( B );

y2 = fwdSub( L1, b1)
x2 = backSub( U1, y1)


