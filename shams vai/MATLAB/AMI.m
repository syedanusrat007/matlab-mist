load pattern.txt
m=pattern;
x=[];
y=[];
flag = 0;
l=length(m);
for i= 1 : l
    x=[ x i-1 i]
    if (m(i) == 0)
        y=[y 0 0];
    else if (flag == 1)
            y = [ y -1 -1]
            flag = 0;
        else
            y= [ y 1 1]
            flag = 1;
        end
    end
end

plot(x,y), axis ([ 0, l, -2, 2]);
