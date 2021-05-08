function encoder(data, div)
code= [ data];
for i= 1:4
     rem = [];
    for j = 1 : 4
   if ( data(j) == div (j))
       rem = [rem 0];
   else 
       rem = [rem 1];
   end 
 
    end
  
  
   data = [rem 0];
   for k = 1 : 4
       data (k) = data (k+1);
   end
 
end
for i = 1: 3
    code= [code data(i)];
end
decoder([1 0 0 0 1 1 0], div);