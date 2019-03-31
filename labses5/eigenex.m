A = [0.8 0.3
     0.2 0.7];
 

x0 = rand(2,1);
xk = zeros(2,3);
xk(:,1) = x0;
eig(A)

for i = 2:3;
  xk(:,i) = A * xk(:,i-1);
  xk(:,i) = xk(:,i)/norm(xk(:,i),inf);
end
%xk(:,100)
xk

%A^n * x0 = alpha.j * V.j



%|A - lI| = 0    

