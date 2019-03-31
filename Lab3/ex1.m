%% load data/ clear
close all
load('EllipsePoints.mat');

%% 1) Generate gaussian data 
%n = 63;
%X = randn(2,n);
%A = [1.0 0.5
%     0.5 0.5];
%t = [8;1];

%% 2) linear transform
%Y = A*X + t;

%% 4) center data
% Y1
lenY1 = size(Y1,2);
meanY11 = mean(Y1(1,:),2);
meanY12 = mean(Y1(2,:),2);

cY11 = Y1(1,:) - meanY11 * ones(1,lenY1);
cY12 = Y1(2,:) - meanY12 * ones(1,lenY1);

CY1 = [ cY11; cY12];

subplot(1,3,1)
plot( cY11, cY12, '.')
hold on

% Y2
lenY2 = size(Y2,2);
meanY21 = mean(Y2(1,:),2);
meanY22 = mean(Y2(2,:),2);

cY21 = Y2(1,:) - meanY21 * ones(1,lenY2);
cY22 = Y2(2,:) - meanY22 * ones(1,lenY2);

CY2 = [ cY21; cY22];

subplot(1,3,2)
plot( cY21, cY22, '.')
hold on

% Y3
lenY3 = size(Y3,2);
meanY31 = mean(Y3(1,:),2);
meanY32 = mean(Y3(2,:),2);

cY31 = Y3(1,:) - meanY31 * ones(1,lenY3);
cY32 = Y3(2,:) - meanY32 * ones(1,lenY3);

CY3 = [ cY31; cY32];

subplot(1,3,3)
plot( cY11, cY12, '.')
hold on

%% 5) compute emperical covariance matrix
C1 = (CY1 * transpose(CY1)) / lenY1;
C2 = (CY2 * transpose(CY2)) / lenY2;
C3 = (CY3 * transpose(CY3)) / lenY3;

%% 6) Eigen decompose

%D is a diagonal matrix of eigenvalues
%V is a matrix with colum vectors of corresponding eigen vectors

[v1, D1] = eig(C1);   
[v2, D2] = eig(C2);
[v3, D3] = eig(C3);

subplot(1,3,1)
plot( D1(1,1) * [0 v1(1,1)]*2, D1(1,1) *[0, v1(2,1)]*2, 'g')
axis equal
plot( D1(2,2) * [0 v1(1,2)],   D1(2,2) *[0, v1(2,2)]  , 'r')
axis equal

subplot(1,3,2)
plot( D2(1,1) * [0 v2(1,1)]*2, D2(1,1) *[0, v2(2,1)]*2, 'g')
axis equal
plot( D2(2,2) * [0 v2(1,2)],   D2(2,2) *[0, v2(2,2)]  , 'r')
axis equal

subplot(1,3,3)
plot( D3(1,1) * [0 v3(1,1)]*2, D3(1,1) *[0, v3(2,1)]*2, 'g')
axis equal
plot( D3(2,2) * [0 v3(1,2)],   D3(2,2) *[0, v3(2,2)]  , 'r')
axis equal
