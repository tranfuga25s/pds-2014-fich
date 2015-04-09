%ejercicio 4
[t,x]=senoidal( 1, 4000, 0, 129, 0, 2 );
[t2,x2]=senoidal( 1, 4000, 0, 8000, 0, 2 );
subplot( 2, 1, 1);
plot(t,x);
subplot( 2, 1, 2);
plot(t2,x2);
%le representacion obtenida nos induce a pensar
%que es una senoidal de 1 Hz, en lugar de los 4000Hz
%reales. Esto se debe a que se encuentra mal muestreada
% (frecuencia de muestreo muy inferior a la frecuencia de
% la se�al).