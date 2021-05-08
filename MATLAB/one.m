xl= 5.0;
xu= 10.0;
t= 0.05;
Ea= 1.5;
fxl= 0.0 ;
fxu = 0.0;
fxr = 0.0;
xr1 = 0.0; 
m= 0.01;
 fprintf (' iteration \t Xl \t Xr \t Xu \t f(Xl) \t f(Xr) \t f(Xu) \t Ea(1.5%)'); 
for i = 1:6
    xr2 = (xl + xu ) / 2; 
    fxl= exp(-7 / xl) * cos(sqrt((10000 / xl ) - (19600 / ( xl * xl ))) * t ) - m; 
    fxu= exp(-7 / xu) * cos(sqrt((10000 / xu ) - (19600 / ( xu * xu ))) * t ) - m; 
    fxr= exp(-7 / xr2) * cos(sqrt((10000 / xr2 ) - (19600 / ( xl * xl ))) * t ) - m; 
    chk = fxl * fxu ;
    El = ((xr2 - xr1) / xr2 ) * 100 ; 
    xr1 = xr2; 
    fprintf ('\n %d  \t %6.2f  \t %6.2f  \t %6.2f  \t %6.2f  \t %6.2f  \t %6.2f  \t %6.2f' ,i,xl, xr2, xu, fxl,fxr,fxu,El);  
    if ( chk < 0)
        xu = xr2;
    elseif ( chk > 0 ) 
            xl = xr2; 
    elseif (chk == 0 ||  El < Ea ) 
            break ;
    end 
   
end

fprintf ( '\n final value : %6.2f  \t Answer\n', xr2);