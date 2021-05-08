load in.txt

m= in

l = length(m);

x1=[];
y1=[];
for i= 1:l
    x1=[x1 i-1 i];
    if( m(i) == 0 )
        y1 = [ y1 0 0];
    else 
        y1 = [ y1 1 1];
    end
end;

subplot(3,1,1)
plot(x,y) axis ([0,l, -2, 2]);
xlabel('messege signal');
A= 5;
fc=20;
t= 0:0.001:1;
y2 = A * cos( 2 * pi * fc * t);

subplot(3,1,2);
plot (t,y2);
xlabel('carrier signal');

k=0;
y3=[];
for i= 1:l
    if( m(i) == 0 )
       for j= 1 : 100
           k = k+1;
           y3=[y3 0];
       end
    else 
        for j = 1 : 100
        k = k+1;
        y3 = [y3 y2(k)];
        end
    end
end;

subplot(3, 1, 3);
plot(y3)
xlabel('Modulated  signal');





