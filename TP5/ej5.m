% Trabajo Practico Nº 5
% Ejercicio 5
close all;
clear all;
N = 10;

t=0:0.05:N;
f= 5; % En Hz

S1 = sin( 2 * pi * t * f );
S2 = square(t);

figure(1);
subplot( 2, 1, 1 );
plot( S1 );
subplot( 2, 1, 2 );
plot( S2 );

figure(2);
Ys = convolucion_suma( S1, S2 );
Yc = conv( S1, S2 );
Yf = filter( S1, S2, t );
FT1 = fft(S1);
FT2 = fft(S2);
Yf = ifft( FT2 .* FT1 );
Yf2 = ifft( [ FT2 zeros( 1, length( S2 )-1 ) ] .* [ FT1 zeros( 1, length( S1 )-1 ) ] );

subplot( 5, 1, 1 );
plot( Ys );
title( "Convolucion x sumatoria" );

subplot( 5, 1, 2 );
plot( Yc );
title( "Conv" );

subplot( 5, 1, 3 );
plot( real( Yf ) );
title( "Convolucion x filtro" );

subplot( 5, 1, 4 );
plot( real( Yf ) );
title( "Convolucion x propiedad" );

subplot( 5, 1, 5 );
plot( Yf2 );
title( "Convolucion x propiedad + muestras" );