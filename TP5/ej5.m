% Trabajo Practico Nº 5
% Ejercicio 5

N = 10;

t=0:0.1:N;
f= 10; % En Hz

S1 = sen( 2 * pi * t * f );
S2 = square();


figure(1);
Ys = convolucion_sumatoria( S1, S2 );
Yc = conv( S1, S2 );
Yf = filter( S1, S2 );
Yf = ifft( fft(S1).*fft(S2) );
Yf2 = ?;

subplot( 5, 1, 1 );
plot( Ys );
title( "Convolucion x sumatoria" );

subplot( 5, 1, 2 );
plot( Yc );
title( "Conv" );

subplot( 5, 1, 3 );
plot( Yf );
title( "Convolucion x filtro" );

subplot( 5, 1, 4 );
plot( Ys );
title( "Convolucion x propiedad" );

subplot( 5, 1, 5 );
plot( Ys );
title( "Convolucion x propiedad + muestras" );