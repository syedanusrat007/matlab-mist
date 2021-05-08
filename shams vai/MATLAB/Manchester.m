load pattern.txt

m=pattern;
l = length(m);

x=[];
y=[];
for i= 1:l
    x=[x ,i-1, ((2 * i) - 1)/2,  ((2 * i) - 1)/2,   i];
    if( m(i) == 0 )
        y = [ y, 1,  1, -1, -1];
    else 
        y = [ y, -1,  -1, 1, 1];
    end
end;

plot(x,y), axis ([0,l, -2, 2])