load in.txt

m= in

l = length(m);

x1=[];
y=[];
for i= 1:l
    x1=[x1 i-1 i];
    if( m(i) == 0 )
        y = [ y 0 0];
    else 
        y = [ y 1 1];
    end
end;
title('FSK');
subplot(4,1,1)
plot(x,y), axis ([0,l, -2, 2]);
xlabel('messege signal');

A= 5;
fc=20;
t= 0:0.001:1;
y1 = A * cos( 2 * pi * fc * t);

subplot(4,1,2);
plot (t,y1);
xlabel('carrier signal 1');

f2= 5;
y2 = A * cos ( 2 * pi * f2 * t);
subplot(4,1,3);
plot (t,y2);
xlabel('carrier signal 2');

k=0;
y3=[];
for i= 1:l
    if( m(i) == 0 )
       for j= 1 : 100
           k = k+1;
           y3=[y3 y2(k)];
       end
    else 
        for j = 1 : 100
        k = k+1;
        y3 = [y3 y1(k)];
        end
    end
end;

subplot(4, 1, 4);
plot(y3)
xlabel('Modulated  signal');
