function J = luminance_change(I, target, value)

if target == 'c' 
  J = imadjust(I,[0 value],[]);
  
elseif target == 'b'
  J = imadjust(I,[],[0 value]);

end