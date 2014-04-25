function [ x, SR, SI ] = espectro_frecuencia( M )
  pr = abs( real( M ) );
  pi = imag( M );
  tam = length( pr );
  medio = floor( tam / 2 );
  x = [ -medio medio ];
  SR = [ pr(medio:tam-1)  pr(1:medio) ];
  SI = [ pi(medio:tam-1)  pi(1:medio) ];
end