% Trabajo Practico Nº 5
% Ejercicio 8

freq = 50:20:150;

t = 0:0.001:2;

Ss = sin( 2 * pi .* freq' .* t );

X = load( 'pb100.txt' );

% Parte 1
% Filtrar las frecuencias

figure(1);
for i=1:length(freq)
  subplot( length( freq ), 1, i );
  plot( conv( Ss(i,:), X ) );
  str = sprintf("Senoidal de %n Hz", freq(i) );
  title(str); 
end
  