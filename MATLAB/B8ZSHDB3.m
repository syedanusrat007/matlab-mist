load inout.txt

x1=[];
y1=[];
x2=[];
y2=[];
one=0;
zero=0;

m=inout;
l = length(m);
i= 1;
while i < l
    if (m(1,i)== 1 && one == 0)
        x1=[x1 i-1 i];
        y1=[y1 1, 1];
        one = 1;
        zero = 0;
        i=i+1;
   
    elseif (m(1,i) == 1 && one == 1)
        x1=[x1 i-1 i];
        y1 = [ y1 -1 -1];
        one = 0;
        zero = 0;
        i=i+1;
      
    elseif ( m(1,i) == 0)
            zero = 1;
            for j = i+1 : l
                if (m(1,j) == 0 )
                    zero = zero + 1;
                elseif (m(2,j) == 1 || zero > 8)
                    break;
                end
            end
            
           
            if ( zero == 8 )
                
                x1 =[ x1 i-1 i i i+1 i+1 i+2 i+2 i+3 i+3 i+4 i+4 i+5 i+5 i+6 i+6 i+7];

                if (one == 1)
                    y1 =[ y1 0 0 0 0 0 0 1 1 -1 -1 0 0 -1 -1 1 1];
                elseif (one == 0) 
                    y1 =[ y1 0 0 0 0 0 0 -1 -1 1 1 0 0 1 1 -1 -1];
                end
                i = i + 8;
                zero = 0;
            elseif (zero ~= 8)
            x1=[x1 i-1 i];
            y1= [y1 0 0];
             i=i+1;
            end
    end
        
    end

i = 1;
count = 0;
while i <= l
    if (m(2,i)== 1 && one == 0)
        x2=[x2 i-1 i];
        y2 = [ y2 1, 1];
        one = 1;
        zero = 0;
         i=i+1;
         count = count +1;
    elseif (m(2,i) == 1 && one == 1)
        x2=[x2 i-1 i];
        y2= [ y2 -1 -1];
        one = 0;
        zero = 0;
        i=i+1;
  
         count = count +1;
     elseif ( m(2,i) == 0)
            for j = i : l
                if (m(2,j) == 0)
                    zero = zero +1;
                elseif (m(2,j) == 1)
                    break;
                end
            end
             fprintf('zero = %d i = %d\n' ,zero, i)
            if ( zero >= 4 )
                x2 =[ x2 i-1 i i i+1 i+1 i+2 i+2 i+3];
                if (mod (count, 2)== 0)
                    y2 =[ y2 1 1 0 0 0 0 1 1];
                    
            
                elseif (mod (count, 2)== 1)
                    y2 =[ y2 0 0 0 0 0 0 -1 -1] ;
                    
                end
                i = i+4;
                zero = 0;
            
                count = 0;
            end
            x2=[x2 i-1 i];
            y2 = [y2 0 0];
            i=i+1;
    end
        
    end

            
subplot (2, 2, 1)

plot(x1,y1), axis ([-1,l+1, -2, 2])
title('B8ZS');

subplot (2, 2, 2)
plot(x2,y2), axis ([-1,l+1, -2, 2])
title('HDB3');
                     
                    
                    
                
                    
 

