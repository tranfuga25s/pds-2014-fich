%ejercicio 1
%SENOIDAL
%[t,x]=senoidal(A,f,tita,fm,t_ini,t_fin)
[t,x]=senoidal(1,5,0,100,0,1);
figure(1)
plot(t,x);
title('senoidal');
sin_valor_medio = 0;
sin_energia = 0;
sin_accion = 0;
sin_potencia = 0;
N = length(x);
for i=1:1:N 
    sin_valor_medio = sin_valor_medio + x(i); 
    sin_energia = sin_energia + x(i)*x(i);
    sin_accion = sin_accion + abs(x(i));
   % sin_potencia = sin_potencia + x(i)*x(i);
end
disp( "Señal senoidal: " );
sin_valor_medio = sin_valor_medio/N;
disp( "Valor medio: " ), disp( sin_valor_medio );
sin_max = max(x);
disp( "Maximo: " ), disp( sin_max );
sin_min = min(x);
disp( "Minimo: " ), disp( sin_min );
sin_amplitud = max(x);
disp( "Amplitud: " ), disp( sin_amplitud );
sin_potencia =  sin_energia/N;
disp( "Potencia: " ), disp( sin_potencia );
sin_RSM = sqrt(sin_potencia);
disp( "RSM: " ), disp( sin_RSM );

%CUADRADA
tsq = 0:0.1:10-0.1;
SQ = square(tsq);
figure(2)
plot(tsq,SQ);
title('cuadrada');
sqr_valor_medio = 0;
sqr_energia = 0;
sqr_accion = 0;
sqr_potencia = 0;
N = length(SQ);
for i=1:1:N 
    sqr_valor_medio = sqr_valor_medio + SQ(i); 

    sqr_energia = sqr_energia + SQ(i)*SQ(i);
    sqr_accion = sqr_accion + abs(SQ(i));
    sqr_potencia = sqr_potencia + SQ(i)*SQ(i);
end
disp( "====================================================" );
disp( "Señal Cuadrada: " );
sqrvalor_medio = sqr_valor_medio/N;
disp( "Valor medio: " ), disp( sqr_valor_medio );
sqr_max = max(SQ);
disp( "Maximo: " ), disp( sqr_max );
sqr_min = min(SQ);
disp( "Minimo: " ), disp( sqr_min );
sqr_amplitud = sqr_max - sqr_min;
disp( "Amplitud: " ), disp( sqr_amplitud );
sqr_potencia =  sqr_energia/N;
disp( "Potencia: " ), disp( sqr_potencia );
sqr_RSM = sqrt(sqr_potencia);
disp( "RSM: " ), disp( sqr_RSM );

%RAMPA
tramp = 0:0.1:10;
RAMP = 1:-0.01:0;
figure(3)
plot(tramp,RAMP);
title('rampa');
ramp_valor_medio = 0;
ramp_energia = 0;
ramp_accion = 0;
ramp_potencia = 0;
N = length(RAMP);
for i=1:1:N 
    ramp_valor_medio = ramp_valor_medio + RAMP(i); 
    ramp_energia = ramp_energia + RAMP(i)*RAMP(i);
    ramp_accion = ramp_accion + abs(RAMP(i));
   % ramp_potencia = ramp_potencia + RAMP(i)*RAMP(i);
end
disp( "====================================================" );
disp( "Señal Rampa: " );
ramp_valor_medio = ramp_valor_medio/N;
disp( "Valor medio: " ), disp( ramp_valor_medio );
ramp_max = max(RAMP);
disp( "Valor máximo" ), disp( ramp_max );
ramp_min = min(RAMP);
disp( "Valor minimo" ), disp( ramp_min );
ramp_amplitud = ramp_max - ramp_min;
disp( "Amplitud: " ), disp( ramp_amplitud );
ramp_potencia = ramp_energia/N;
disp( "Potencia: " ), disp( ramp_potencia );
ramp_RSM = sqrt(ramp_potencia);
disp( "RSM: " ), disp( ramp_RSM );

%ALEATORIA
trand = 0:0.1:10;
RANDO = rand(size(trand));
figure(4)
plot(trand, RANDO);
title('Aleatoria');
rand_valor_medio = 0;
rand_energia = 0;
rand_accion = 0;
rand_potencia = 0;
N = length(RANDO);
for i=1:1:N 
    rand_valor_medio = rand_valor_medio + RANDO(i); 
    rand_energia = rand_energia + RANDO(i)*RANDO(i);
    rand_accion = rand_accion + abs(RANDO(i));
    %rand_potencia = rand_potencia + RANDO(i)*RANDO(i);
end
disp( "================================================" );
disp( "Señal random" );
rand_valor_medio = rand_valor_medio/N;
disp( "Valor medio: " ), disp( rand_valor_medio );
rand_max = max(RANDO);
disp( "Maximo: " ), disp( rand_max );
rand_min = min(RANDO);
disp( "Minimo: " ), disp( rand_min );
rand_amplitud = rand_max - rand_min;
disp( "Amplitud: " ), disp( rand_amplitud );
rand_potencia = rand_energia/N;
disp( "Potencia: " ), disp( rand_potencia );
rand_RSM = sqrt(rand_potencia);
disp( "RSM: " ), disp( rand_RSM );