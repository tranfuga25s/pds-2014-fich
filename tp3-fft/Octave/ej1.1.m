% Guia de Trabajos Practicos Nº 3
% Ejercicio 1
clear all;
f1 = 10;
f2 = 20;
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
[ x, ER, EI ] = espectro_frecuencia( espectro );

subplot( 2, 1, 1 );
bar( ER );
title( "Espectro de magnitud de sumatoria" );

subplot( 2, 1, 2 );
bar( EI );
title( "Espectro de fase de sumatoria" );