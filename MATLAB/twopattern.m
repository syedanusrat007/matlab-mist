function out=twopattern(ind)
e=mod(ind, 2);
if((ind >=1) & (ind <=10))
    load in.txt
    m=in
    for i=0:1:m-1
     for x=m-(i+1):-1:0
         fprintf(' ');
     end
    for j= m-i:2:m+i
        fprintf('%d ', j);
        
    end
    fprintf('\n');
    end
elseif((ind>10) & ( e == 0 ))
    m=input('\nInsert a number ');
    
    for i=0 :1: m-2
     for j=0: 1: i
         fprintf('%c', 65+j)
     end
     fprintf('\n')
    end
    for k=m-2:-1:0
        for l=0:1:k-1
        fprintf('%c', 65+l)
        end
        fprintf('\n')
    end
end
    
        
        
 end