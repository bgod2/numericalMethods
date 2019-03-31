%% load 
load('obj_pca.mat');
%B
%X
%Y
%imsize

%load ('light_pca.mat');
%B
%X
%Y
%imsize

close all

%%
load light_pca

for c = 1:size(Y,2)
  Ic = renderim(Y(:,c),B,imsize);
  imshow(Ic)
  drawnow
end


