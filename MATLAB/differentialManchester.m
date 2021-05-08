load pattern.txt

m=pattern;
l = length(m);

x=[];
y=[];
x1=[-1 -1];
x2=[1 1];
for i= 1:l
    x=[x ,i-1, ((2 * i) - 1)/2,  ((2 * i) - 1)/2,   i];
    if( m(i) == 1 )
        temp = x1;
        x1=x2;
        x2=temp;
        y = [y x1 x2];
      
       
    else 
        y = [ y, x1, x2];
    end;
end;

plot(x,y), axis ([-1,l+1, -2, 2]);
