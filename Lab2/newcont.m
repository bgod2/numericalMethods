close all
 
I = imread('tumorContour.jpg');
rI = imresize( I, 2);
%[XB, YB] = find( I > 250 );
rI = imcomplement(rI);
imshow(rI)

%errn =size(XB, 1);

[X,Y] = ginput;
hold on
imshow(rI)


plot(X,Y,'r*')
n = size(X,1);


t = 1:length(X);
tt = 1:.1:length(X);

pp = spline( t, [X';Y'],tt)

plot(pp(1,:), pp(2,:))



%x,y = spline(t, [x,y],tt)



