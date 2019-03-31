function Y_new = polynomial_interp( X, Y, X_new, n )

  M = length(X);
  N = n + 1;
  A = ones(M,N);                          % may need to switch M and N
   

    for l = 2:N
      A(:,l) =  X' .^ (l-1);                

    end	       		

  
%done matrix A

  b = Y';  

%solve Ax = b
  x = A\b;

  x = fliplr(x');  %transpose and flip x to have correct order for polyval

  
  %Y_new = polyval( x, X_new );
 
  
  Y_new = zeros(1,length(X_new));
  Y_new = Y_new + x(end);
  for i = 1: length(x) -1 
      Y_new = Y_new + x(end-i) * X_new.^i;    
  end
  
  
  
  
end





