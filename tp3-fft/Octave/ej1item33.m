% Guia de Trabajos Practicos Nº 3
% Ejercicio 1
clear all;
f1 = 10;
f2 = 10.5;
fm = 1/0.001;
tinicio = 0;
tfin = 1;
[t,S1]=senoidal( 1, f1, 0, fm, tinicio, tfin );
[t,S2]=senoidal( 1, f2, 0, fm, tinicio, tfin );
S = S1 + S2;

figure(1);
subplot( 3, 1, 1 );
plot( t, S1 );
title( "Senoidal 10 Hz" );

subplot( 3, 1, 2 );
plot( t, S2 );
title( "Senoidal 20 Hz" );

subplot( 3, 1, 3 );
plot( t, S );
title( "Sumatoria" );


figure(2);
espectro = fft( S );
[ x, ER ] = espectro_frecuencia( espectro );
bar( ER );
title( "Espectro de magnitud de sen(2*pi*10*t)+sen(2*pi*10.5*t)" );