% Sample script  that shows how to automate running problem solutions
close all;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% a) Load an image using the imread command 
lenna = imread('lenna.jpg');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% b) Display original image in the first spot of a 2 x 3 a grid layout
%    Check the imshow and subplot commands.
a = lenna;
h = figure;
grid = subplot(2,3,1);
imshow( a)
title('original')
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% c) Display a grey scale version of the image in position 2 of the grid.
%    help rgb2grey
b = lenna;
subplot(2,3,2);
imshow(rgb2gray(b))
title('grey')
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% d) Generate a new figure and ask user to manually select a region of the
%    image. Display the subimage in position 3 of the grid.

c = lenna;
% Get user input on a newly dislayed image
figure;
imshow(lenna);
rect = getrect;


% Make grid the current figure
figure(h);
subplot(2,3,3);
% Display selected region. Note the last : which applies the cut
% over all 3 channels.
c = c(rect(1):rect(1) + rect(4), rect(2) : rect(2)+rect(3)); 

imshow(c)

title(' small area')
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% e) Create a function J = luminance_change(I, target, value) such that:
%   * When given the option 'c', image I's contrast will be modified by
%     the given value. Simple multiplcation will achieve this.
%   * When given the option 'b', image I's brightness will be modified by
%     the given value. Simple addition will achieve this.
%  
%   Showcase your function by filling positions 4 and 5 in the grid




% Contrast change
subplot(2,3,4);
d = lenna;

d = luminance_change(d , 'c' , .3);

imshow(d)
title('contrast change')





pause();

% Brightness change
subplot(2,3,5);
e = lenna;

e = luminance_change(e , 'b' , .5);

imshow(e)
title('brightness change')

pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% f) BONUS: Display a version of the image after it's been blurred using a
%    Gaussian filter.






