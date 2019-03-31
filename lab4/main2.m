t= [0.276922984960890;0.046171390631154;0.097131781235848;0.823457828327293];%rand(4,1); %Choose some random starting point.
load human_data.mat
%%
load walk1.mat
[n, m] = size( L );
robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
    
 
end

%%
load walk2.mat
[n, m] = size( L );
%robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
 
end

%%
load walk3.mat
[n, m] = size( L );
%robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
 
end

%%
load walk4.mat
[n, m] = size( L );
%robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
 
end

%%
load walk5.mat
[n, m] = size( L );
%robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
 
end

%%
load walk6.mat
[n, m] = size( L );
%robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
 
end
%%
load jump1.mat
[n, m] = size( L );
%robot3D('new')
ml = cell2mat(Ml);
mr = cell2mat(Mr);


for i = 1:m 
    
    l = L(:,i);
    r = R(:,i);
    
    lt = invKin3D( ml, t, l);
    rt = invKin3D( mr, t, r);
    
    theta = [lt
             rt];
         
    robot3D( humanInterp( drad, theta) );
    
 
end