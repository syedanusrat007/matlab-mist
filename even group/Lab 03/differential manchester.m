load input1.txt;
var = imput1;
strlen = length(var);

x=[];
y=[];

for i=1:strlen
	x = [x i-1 i-.5 i-.5 i]
	if(var(i)==0)
		y=[y 1 1 -1 -1]
	else if(var(i) == 1)
		y=[y -1 -1 1 1]
end
end