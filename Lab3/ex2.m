%% 
close all
load('sincos_basis.mat')

%Y = [cos(bt) ; sin(bt)]
%B = [sin(ax) ; cos(ax)]

%sin(ax+bt) = sin(ax)cos(bt) +cos(ax)sin(bt)

%% initial image
for i = 1:10
Ii = renderim(Y(:,i),B,imsize);
imshow(Ii,[]);
drawnow;
pause(0.1);
end
  
%% transform A
% ax => 2ax


ax1 = B(:,1);
ax2 = B(:,2);

ax1 = asin(ax1);
ax2 = acos(ax2);

ax1 = sin( ax1 * 2);
ax2 = cos( ax2 * 2);

nB = B;

nB(:,1) = ax1;
nB(:,2) = ax2;

for i = 1:20
Ii = renderim(Y(:,i),nB,imsize);
imshow(Ii,[]);
drawnow;
pause(0.1);
end




%% initial image
for i = 1:20
Ii = renderim(Y(:,i),B,imsize);
imshow(Ii,[]);
drawnow;
pause(0.1);
end
%% transform B
    
bt1 = Y(1,:);
bt2 = Y(2,:);

bt1 = acos(bt1);
bt2 = asin(bt2);

nY(1,:) = cos(2 * bt1 );
nY(2,:) = sin(2 * bt2 );




for i = 1:20
Ii = renderim(nY(:,i),B,imsize);
imshow(Ii,[]);
drawnow;
pause(0.1);
end


























