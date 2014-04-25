% Trabajo Practico 3
% Ejercicio 4

clear all;
close all;

tinicio = 0; % en Seg
tfin = 1; % en Seg

fm = 100; % en Hz

f = 4;

dt = 1/fm;
t = tinicio:dt:tfin;

SC = square( 2*pi*t*f );

figure(1);
plot( t, SC );
axis( [ 0 1 -1.1 1.1 ] );

% Agrego los Ceros
figure(2);
SC2 = [ SC zeros( 1, length( SC ) ) ];

TFSC = fft( SC2 );

tam = length( TFSC );
medio = tam / 2;
TFSC2 = [ TFSC(medio:tam-1)  TFSC(1:medio) ];

subplot( 2, 1, 1 );
stem( abs( real( TFSC2 ) ) );
title( "Parte real" );

subplot( 2, 1, 2 );
stem( abs( imag( TFSC2 ) ) );
title( "Parte imaginaria" );

% La fase se encuentra en la parte imaginaria
% Para agregar el retraso tenemos que calcular la pendiente
ret = 10; % Cantidad de muestras
for i=1:tam
  TFSC3(i) = TFSC(i) * exp( ( -j*2*pi*i*ret ) / tam  );
end

figure(3);
TFSC4 = [ TFSC3(medio:tam-1)  TFSC3(1:medio) ];

subplot( 3, 1, 1 );
stem( abs( real( TFSC4 ) ) );
title( "Parte real" );

subplot( 3, 1, 2 );
stem( abs( imag( TFSC4 ) ) );
title( "Parte imaginaria" );

% Antitransformo
antitranformada = ifft( TFSC3 );
subplot( 3, 1, 3 );
plot( real( antitranformada ) );
%axis( [ 0 1 -1.1 1.1 ] );


% Genero la señal pero retardada 10 muestras
SC2 = [ 0 0 0 0 0 0 0 0 0 0 SC(1:length(SC)-ret) ];

figure(4);
subplot( 3, 1, 1 );
plot( t, SC2 );
axis( [ 0 1 -1.1 1.1 ] );

TFSC22 = fft( SC2 );
tam = length( TFSC22 );
medio = floor( tam / 2 );
TFSC221 = [ TFSC22(medio:tam-1)  TFSC22(1:medio) ]; 

subplot( 3, 1, 2 );
stem( abs( real( TFSC221 ) ) );

subplot( 3, 1, 3 );
stem( abs( imag( TFSC221 ) ) );