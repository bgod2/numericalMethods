function [y] = fwdSub( L, b ) 
   
   sizeA = size(L);
   y = 0:0:sizeA;
   
   for i = 1:sizeA
       y(i) = b(i)/L(i,i);
       	   
       for j = i+1:sizeA
       	   b(i) = b(i)-L(j,i)*y(i);
       
       end
   end
end