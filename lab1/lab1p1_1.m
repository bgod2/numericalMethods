tic
for i = 1:1000
    t(i) = 2*i;
    y(i) = sin(t(i));
end
toc
clear

tic
t = [2:2:1000];
y = sin(t);
toc
