%% 
close all
load('immotion_basis.mat');
%B 307200 x 3    [ I, Ix, Iy]
%Y 3 x 13     [ 1, dx, dy]'
%imsize 1 x 2
% I(u+du, v+dv) = I(u,v) + [Ix(u,v) Iy(u,v)] * [du dv]'

%% original

for i = 1:13
Ii = renderim(Y(:,i),B,imsize);
imshow(Ii,[]);
drawnow;
pause(0.1);
end

%% my example
I = imread('bear.png');
A =  double(I);
imsize = size(A);
[ fx, fy] = gradient(A);
[ m, n] = size(A);

I  = reshape(A, (m * n), 1);
Ix = reshape(fx, (m * n), 1);
Iy = reshape(fy, (m * n), 1);
nB = [ I, Ix, Iy];

%render image
for i = 1:13
Ii = renderim(Y(:,i),nB,imsize);
imshow(Ii,[]);
drawnow;
pause(0.1);
end
