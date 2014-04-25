% Trabajo Practico Nº 3
% Ejercicio 5

clear all;
close all;

fm = 1000;
dt = 1/fm;
tini = 0;
tfin = 1;
f = 10;
t = tini:dt:tfin;
S1 = sin(2*pi*f*t);

figure(1);
subplot( 2, 1, 1 );
plot( t, S1 );
title( "Senoidal 10 Hz - 1 seg " );

[ x, PR, PI ] = espectro_frecuencia( fft( S1 ) );
subplot( 2, 1, 2 );
stem( PR );

% Delta de Dirac
S2 = zeros( 1, length( t ) );
medio = floor( length( t ) / 2 );
S2(medio) = 1;

figure(2);
subplot( 2, 1, 1 );
plot( t, S2 );
title( "Delta de Dirac" );

[ x, PR ] = espectro_frecuencia( fft( S2 ) );
subplot( 2, 1, 2 );
stem( PR );

% Coseno hiperbolico
S3 = cosh( 2*pi*f*t );

figure(3);
subplot( 2, 1, 1 );
plot( t, S3 );
title( "Coseno Hiperbolico" );

[ x, PR ] = espectro_frecuencia( fft( S3 ) );
subplot( 2, 1, 2 );
stem( PR );
