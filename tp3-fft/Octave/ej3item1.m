% Trabajo Practico Nº 3
% Ejercicio 3
% Item 1

clear all;
close all;

tinicial = 0; % en Seg
tfinal   = 1; % en Seg
fm = 10; % en Hz
f1 = 3; % En Hz ( Una frecuencia multiplo de 2*pi/N )
f2 = 2; % En Hz ( Una frecuencia que no sea multiplo de 2*pi/N )

dt = 1/fm;
t = tinicial:dt:tfinal;
S1 = exp(j*f1*t);
S2 = exp(j*f2*t);

figure(1);
subplot( 2, 1, 1 );
plot( t, real( S1 ) );
title( "Senoidal de 3 Hz" );

subplot( 2, 1, 2 );
plot( t, real( S2 ) );
title( "Senoidal de 2 Hz" );

% Genero la concatenación
C1 = [ S1 S1 ];
C2 = [ S2 S2 ];

figure(2);
subplot( 2, 2, 1 );
plot( real( C1 ) );

subplot( 2, 2, 2 );
plot( imag( C1 ) );

subplot( 2, 2, 3 );
plot( real( C2 ) );

subplot( 2, 2, 4 );
plot( imag( C2 ) );

% Genero las señales nuevamente
dt = 1/fm;
t = 0:dt:2;
R1 = exp(j*f1*t);
R2 = exp(j*f2*t);

figure( 3 );
subplot( 2, 2, 1 );
plot( t, real( R1 ) );

subplot( 2, 2, 2 );
plot( t, imag( R2 ) );

subplot( 2, 2, 3 );
plot( t, real( R1 ) );

subplot( 2, 2, 4 );
plot( t, imag( R2 ) );