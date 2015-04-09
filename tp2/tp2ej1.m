% Trabajo Practico 2
% Ejercicio 1
% Señal SENOIDAL
% [t,x]=senoidal(A,f,tita,fm,t_ini,t_fin)
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
    % No calculamos la potencia 
    sin_potencia = sin_potencia + x(i)*x(i);
end
sin_valor_medio = sin_valor_medio/N;
sin_max = max(x);
sin_min = min(x);
sin_amplitud = sin_max - sin_min;
sin_potencia = sin_energia/N;
sin_RSM = sqrt(sin_potencia);

divisor_consola();
disp("Señal Senoidal");
disp("Valor medio: "), disp(sin_valor_medio);
disp("Valor maximo: "), disp(sin_max);
disp("Valor minimo: "), disp(sin_min);
disp("Amplitud: "), disp(sin_amplitud);
disp("Potencia: "), disp(sin_potencia);
disp("RSM: "), disp(sin_RSM);
divisor_consola();

% Señal CUADRADA
tsq = 0:0.1:10-0.1;
SQ = square(tsq);
figure(2)
plot(tsq,SQ);
title('Cuadrada');
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
sqr_valor_medio = sqr_valor_medio/N;
sqr_max = max(SQ);
sqr_min = min(SQ);
sqr_amplitud = sqr_max - sqr_min;
sqr_potencia = sqr_energia/N;
sqr_RSM = sqrt(sqr_potencia);


divisor_consola();
disp("Señal Cuadrada");
disp("Valor medio: "), disp(sqr_valor_medio);
disp("Valor maximo: "), disp(sqr_max);
disp("Valor minimo: "), disp(sqr_min);
disp("Amplitud: "), disp(sqr_amplitud);
disp("Potencia: "), disp(sqr_potencia);
disp("RSM: "), disp(sqr_RSM);
divisor_consola();

% Señal RAMPA
tramp = 0:0.1:10;
RAMP = 1:-0.01:0;
figure(3)
plot(tramp,RAMP);
title('Rampa');
ramp_valor_medio = 0;
ramp_energia = 0;
ramp_accion = 0;
ramp_potencia = 0;
N = length(RAMP);
for i=1:1:N
    ramp_valor_medio = ramp_valor_medio + RAMP(i);
    ramp_energia = ramp_energia + RAMP(i)*RAMP(i);
    ramp_accion = ramp_accion + abs(RAMP(i));
    ramp_potencia = ramp_potencia + RAMP(i)*RAMP(i);
end
ramp_valor_medio = ramp_valor_medio/N;
ramp_max = max(RAMP);
ramp_min = min(RAMP);
ramp_amplitud = ramp_max - ramp_min;
ramp_potencia = ramp_energia/N;
ramp_RSM = sqrt(ramp_potencia);

divisor_consola();
disp("Señal Rampa");
disp("Valor medio: "), disp(ramp_valor_medio);
disp("Valor maximo: "), disp(ramp_max);
disp("Valor minimo: "), disp(ramp_min);
disp("Amplitud: "), disp(ramp_amplitud);
disp("Potencia: "), disp(ramp_potencia);
disp("RSM: "), disp(ramp_RSM);
divisor_consola();

% Señal ALEATORIA
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
    rand_potencia = rand_potencia + RANDO(i)*RANDO(i);
end
rand_valor_medio = rand_valor_medio/N;
rand_max = max(RANDO);
rand_min = min(RANDO);
rand_amplitud = rand_max - rand_min;
rand_potencia = rand_energia/N;
rand_RSM = sqrt(rand_potencia);


divisor_consola();
disp("Señal Aleatoria");
disp("Valor medio: "), disp(rand_valor_medio);
disp("Valor maximo: "), disp(rand_max);
disp("Valor minimo: "), disp(rand_min);
disp("Amplitud: "), disp(rand_amplitud);
disp("Potencia: "), disp(rand_potencia);
disp("RSM: "), disp(rand_RSM);
divisor_consola();
disp("Fin");
divisor_consola();