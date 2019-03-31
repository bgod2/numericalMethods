x = .8;
k = 1;
while abs(f(x)) > .0000000001
    
    X = [ k
          x
         f(x)
         fp(x)
         ]
   x = x -  f(x) / fp(x);
   
  
   k = k +1;
    
end

x
