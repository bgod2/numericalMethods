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

if ( X(1) < X(2) )     % forward if 1 backward if 2                     
    q = 1;
else
    q = 0;
end

X(end + 1) = X(1);
Y(end + 1) = Y(1);

start = 1;
ArrpT = [];
ArrpL = [];

x,y = spline(t, [x,y],tt)

hold on
 for i = 1: n-1                             %break the points into seperate sections and plot spline of each
   if( X(i) == X(i+1))
       if(i ~= 1 && i ~= start)      
        fin = i;
        pX = X(start:fin);
        pY = Y(start:fin);  
        pT = (X(start): .01 : X(fin));
                
        pL = spline( pX, pY, pT);
        
        
        plot( pT, pL, 'b')
       end 
       line([X(i),X(i+1)],[Y(i),Y(i+1)]);
       start = i+1;
        
       if ( X(i+1) < X(i+2) )                          %switch true = forward, false = backward
          q = 1;
       else
          q = 0;
       end
   end
    
    if q == 1                                   %check if changing direction
        if( X(i) > X(i+1))
            fin = i;
            pX = X(start:fin); 
            pY = Y(start:fin); 
            pT = (X(start): .01 : X(fin));
            
            pL = spline( pX, pY, pT);
            plot( pT, pL, 'b')
            
            start = i;
            q = 0; 
        end
    else
        if( X(i) < X(i+1))
            fin = i;
            pX = X(start: fin); 
            pY = Y(start: fin); 
            pT = (X(fin): .01 : X(start));
            
            pL = spline( pX, pY, pT);
            plot( pT, pL, 'b')
            
            start = i;
            q = 1; 
        end       
    end
 end
    
 if( (X( end ) > X( 1 )) && ( q == 1)) || ( (X( end ) < X( 1 )) && ( q == 0))
                        % last piecewise
    pX = X(start:end);
    pY = Y(start:end);    
    pT = (min(pX): .01 : max(pX));
    pL = spline( pX, pY, pT);
    plot( pT, pL, 'b')
    
    pX = [ X(end) ,  X( 1 )];
    pY = [ Y(end) ,  Y( 1 )];
    
 else
    pX = X(start:end);
    pY = Y(start:end);
    pT = (min(pX): .01 : max(pX));
    pL = spline( pX, pY, pT);
    plot( pT, pL, 'b')
 end
 
 
 
 

