g= 9.8;
c=15;
m= 68.1;
v=35;
t=9;
Es =  0.1;
fx1= 0.0 ;
fx2 = 0.0;
fx3 = 0.0;
x31 = 0.0; 
prompt = ' Enter guessed x1 = ';
x1=input(prompt);
prompt = ' Enter guessed x2 = ';
x2=input(prompt);
g = ((x2 - x1) / x2);
i=0;
fprintf (' iteration \t\t X(r-1) \t X(r+1) \t X(r) \t f(X(r-1)) \t f(X(r+1)) \t f(X(r)) \t Ea ( %.2f )', Es); 
  while(g > Es)
        i = i + 1;
        fx1= ((g * x1) / c ) * ( 1 - exp(-(c * t) / x1)) - v ;  
        fx2=((g * x2) / c ) * ( 1 - exp(-(c * t) / x2)) - v; 
        if (fx1 == fx2)
            fprintf('Function has the same value on X(r-1) and Xr on iteration %d\n', i);
            disp('Denominator in Regula falsi is zero');
            root = 'Regula falsi can''t compute the root';
            beep
            disp('Go for another iteration');
            break;
        end
        x3 = x2 - ((fx2*(x2-x1))/(fx2 - fx1));
        fx3=((g * x3) / c ) * ( 1 - exp(-(c * t) / x3)) - v; 
        if(fx3*fx2 > 0)
            x1 = x3;
            g = fx1;
            root =x1;
        else
            x2= x3;
            g = fx2;
            root =x2;
        end
        fprintf('\n%3d%17.4f%11.4f%11.4f%14.4f%14.4f%14.4f\n', i,x1,x2,x3,fx1,fx3,fx2);
  end
  
 