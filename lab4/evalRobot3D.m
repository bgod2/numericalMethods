function [ pos, J] = evalRobot3D( M, theta)
    
    Mh = [ M(:,1) M(:,2) M(:,3) M(:,4) ];
    Mk = [ M(:,5) M(:,6) M(:,7) M(:,8) ];
    Mf = [ M(:,9) M(:,10) M(:,11) M(:,12) ];
    
    t1 = theta(1,1);
    t2 = theta(2,1);
    t3 = theta(3,1);
    t4 = theta(4,1);
    
    % on the bottom of the page
    Rx = [ 1   0        0      0
           0 cos(t1) -sin(t1)  0
           0 sin(t1)  cos(t1)  0
           0   0        0      1];
    
    dRx =[ 0    0        0     0
           0 -sin(t1) -cos(t1) 0
           0  cos(t1) -sin(t1) 0
           0    0        0     0];
    
    Ry = [ cos(t2) 0  sin(t2) 0
            0      1    0     0
          -sin(t2) 0  cos(t2) 0
            0      0    0     1 ];
        
    dRy =[-sin(t2) 0  cos(t2) 0
            0      0    0     0
          -cos(t2) 0 -sin(t2) 0 
            0      0    0     0 ];  
    
    Rz = [ cos(t3) -sin(t3) 0 0
           sin(t3)  cos(t3) 0 0
             0        0     1 0 
             0        0     0 1 ];
         
    dRz =[-sin(t3) -cos(t3) 0 0
           cos(t3) -sin(t3) 0 0 
             0        0     0 0
             0        0     0 0 ];
                        
    Rx4 =[ 1    0       0     0
           0 cos(t4) -sin(t4) 0
           0 sin(t4) cos(t4)  0
           0    0       0     1 ];
    
    dRx4 =[ 0   0       0       0
            0 -sin(t4) -cos(t4) 0
            0  cos(t4) -sin(t4) 0
            0   0       0       0];
    
    
   % given function, 3 point vector
    pos = Mh * Rz * Ry * Rx * Mk * Rx4 * Mf * [0 0 0 1]';
    pos = [ pos(1,1)
            pos(2,1)
            pos(3,1) ];
   %% 
    j1 = Mh * Rz * Ry * dRx * Mk * Rx4 * Mf * [ 0 0 0 1]';
    j2 = Mh * Rz * dRy * Rx * Mk * Rx4 * Mf * [ 0 0 0 1]';
    j3 = Mh * dRz * Ry * Rx * Mk * Rx4 * Mf * [ 0 0 0 1]';
    j4 = Mh * Rz * Ry * Rx * Mk * dRx4 * Mf * [ 0 0 0 1]';
    J  = [ j1'
           j2'
           j3'
           j4'];
       
    J  = [ j1(1,1) j1(2,1) j1(3,1)
           j2(1,1) j2(2,1) j2(3,1)
           j3(1,1) j3(2,1) j3(3,1)
           j4(1,1) j4(2,1) j4(3,1)]';
    
    
end