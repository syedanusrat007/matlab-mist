function decoder(code, div)
l = length(code);
data=[code];
data
div
for i= 1:4
     
     rem = [];
   for j = 1 : 4
   if ( data(j) == div (j))
       rem = [rem 0];
   else 
       rem = [rem 1];
   end 
   end
     data=[];
     data=[rem];
     
  for k = 1 : 3
       data (k) = data (k+1);
  end
  if( i+4 < l)
  data(4) = code (i+4);
  end
  
 
 
end
a=0;
for i = 1: 4
    a= a + rem(i);
end

if (a == 0 )
    fprintf ( ' No error ' );
else 
    fprintf(' error ');
end