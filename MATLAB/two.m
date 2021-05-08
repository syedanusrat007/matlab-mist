g= 9.8;
m= 68.1;
v=40;
t=10;
s=2; 
Ea = 0.5 * 10^(2-s);
prompt = ' Enter guessed xl = ';
xl=input(prompt);
prompt = ' Enter guessed xu = ';
xu=input(prompt);
fxl= 0.0 ;
fxu = 0.0;
fxr = 0.0;
xr1 = 0.0; 
 fprintf (' iteration \t\t Xl \t Xr \t Xu \t f(Xl) \t f(Xr) \t f(Xu) \t Ea ( %f )', Ea); 
 i =1;
 a= 1; 
while a
    
    xr2 = (xl + xu ) / 2; 
    fxl= ((g * m) / xl ) * ( 1 - exp(-(xl * t) / m)) - v ;  
    fxu=((g * m) / xu ) * ( 1 - exp(-(xu * t) / m)) - v; 
    fxr=((g * m) / xr2 ) * ( 1 - exp(-(xr2 * t) / m)) - v; 
    chk = fxl * fxu ;
    El = ((xr2 - xr1) / xr2 ) * 100 ; 
    xr1 = xr2; 
    fprintf ('\n%d\t %6.2f \t %6.2f \t %6.2f \t %6.2f \t %6.2f \t %6.2f \t %6.2f' ,i,xl, xr2, xu, fxl,fxr,fxu,El);  
    if ( chk < 0)
        xu = xr2;
    elseif ( chk > 0 ) 
            xl = xr2; 
    elseif (chk == 0 ||  El < Ea ) 
        a=0; 
      break ;
    end 
    i = i + 1;
end
fprintf ( '\n final value : %6.2f  \t Answer\n', xr2);