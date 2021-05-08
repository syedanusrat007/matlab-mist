load in.txt
x=[];
y=[];
w=in;
tmp=-1;
cntZero=0;
tmp2=0;
cntOne=0;
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
j=1
for r = 1 : z
    rervalue=r
    jervalue=j
    % input 1 hole just reverse kore ditesi
   if w(j) == 1
       tmp=tmp*-1
       y=[y tmp tmp]
       cntZero=0
       cntOne=cntOne+1  %non zero input count kortesi
       j=j+1
   
       %input 0 er jonne
   else
    if j+3<=z    %ekta zero pele immediate porer 3 ta input check kortesi. index jeno input size er beshi na hoy shetar check
      if w(j+1)==0 & w(j+2)==0 & w(j+3)==0 %ekta zero pele immediate porer 3 ta input check kortesi
          b=mod(cntOne,2) % number of last non zero input odd na even
          cntOne=0  %ekhon input 0 ,ei muhurte non zero element er shongkha 0
          j=j+4 %ekshathe 4ta input nie kaj kortesi tai j er value 4 baray dilam jeno porer iteration e abar same value check na kore
            if b==0  %last non zero element er shongkha even
                  tmp=tmp*-1
                  y=[y tmp tmp 0 0 0 0 tmp tmp]
           
            else %last non zero odd
                 y=[y 0 0 0 0 0 0 tmp tmp]
           
            end
      else %current input 0 but erpore 3 ta 0 nai.tahole b00v / 000v die replace hobe na
          j=j+1
          y= [y 0 0]
      end
    else %current element zero  kintu erporer 3ta element check kori nai cause  j+3 input er theke boro hoye jabe
           j=j+1
           if w(j)==0
               y=[y 0 0]
           else
               tmp=tmp*-1
               y=[y tmp tmp]
           end
       end
   
   end
   
  if j>z
      break
  end
  
       
end

plot(x,y),axis([0,z+3,-4,4])
