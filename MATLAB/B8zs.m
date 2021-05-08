load inout.txt
x=[];
y=[];
w=inout;
tmp=-1;
cnt=0;
tmp2=0;
k=0;
j=0;
l=0;
m=0;
z=length(w)

for i = 0: z-1
    x = [x i i+1]
end
z=length(w)
r=1
for j = 1 : z
    jervalue=j
   if w(j) == 1 %input 1 hole reverse kore append
       tmp=tmp*-1
       y=[y tmp tmp]
       cnt=0
   
   else  %input zero hole zerocount++ hobe and 0 append
       y = [y 0 0]
       cnt=cnt+1
   end
   
   if cnt==8  %por por 8ta zero pele y array er value replace kore ditese
       cnt=0
       k=j-8+1
       l=k*2-1
       for m=l:l+5
           mervalue=m
           y(m) = 0
       end
       y(l+6) = tmp
       y(l+7) =tmp
        y(l+15) = tmp
       y(l+14) =tmp
       
        y(l+8) = tmp*-1
       y(l+9) =tmp*-1
       y(l+12) = tmp*-1
       y(l+13) =tmp*-1
       y(l+10)=0
       y(l+11)=0
       
       
   end
       
end

plot(x,y),axis([0,z+3,-4,4])
