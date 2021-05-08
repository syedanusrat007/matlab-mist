W1=[+1];
W2=[W1,W1;W1,-W1];
W4=[W2,W2;W2,-W2];

C1=W4(1,:);
C2=W4(2,:);
C3=W4(3,:);
C4=W4(4,:);

d1=0;
s1=input('Station 1:','s');
if(s1=='0')
    d1=-1;
elseif(s1=='1')
    d1=+1;
elseif(s1=='silent')
    d1=0;
else
    fprintf('Inavalid input');
end

d2=0;
s2=input('Station 2:','s');
if(s2=='0')
    d2=-1;
elseif(s2=='1')
    d2=+1;AC
elseif(s2=='silent')
    d2=0;
else
    fprintf('Inavalid input');
end

d3=0;
s3=input('Station 3:','s');
if(s3=='0')
    d3=-1;
elseif(s3=='1')
    d3=+1;
elseif(s3=='silent')
    d3=0;
else
    fprintf('Inavalid input');
end

d4=0;
s4=input('Station 4:','s');
if(s4=='0')
    d4=-1;
elseif(s4=='1')
    d4=+1;
elseif(s4=='silent')
    d4=0;
else
    fprintf('Inavalid input');
end

y1=[];
y1=d1*C1;
y2=[];
y2=d2*C2;
y3=[];
y3=d3*C3;
y4=[];
y4=d4*C4;

Y=[];
Y=y1+y2+y3+y4

stairs(Y);
d1=Y.*C1;
a1=d1(1)+d1(2)+d1(3)+d1(4);
data1=a1/4;
fprintf('%d\n',data1);
d2=Y.*C2;
a2=d2(1)+d2(2)+d2(3)+d2(4);
data2=a2/4;
fprintf('%d\n',data2);
d3=Y.*C3;
a3=d3(1)+d3(2)+d3(3)+d3(4);
data3=a3/4;
fprintf('%d\n',data3);
d4=Y.*C4;
a4=d4(1)+d4(2)+d4(3)+d4(4);
data4=a4/4;
fprintf('%d\n',data4);



    


