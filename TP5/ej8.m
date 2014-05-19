% Trabajo Practico Nº 5
% Ejercicio 8

clear all;
close all;

freq = 50:20:150;

t = 0:0.001:2;

Ss = sin( 2 * pi .* freq' .* t );

X = load( 'pb100.txt' );

Ys = zeros( length( freq ), length( t ) + length( X ) - 1 );

% Parte 1
% Filtrar las frecuencias

figure(1);
for i=1:length(freq)
  subplot( length( freq ), 1, i );
  Ys(i,:) = conv( Ss(i,:), X );
  plot( Ys(i,:) );
  str = sprintf("Senoidal de %i Hz", freq(i) );
  title(str); 
end
  
% Parte 2
% Obtener las señales originales
Ds = zeros( length( freq ), length( t ) );
figure(2);
for i=1:length(freq)
  subplot( length( freq ), 1, i );
  [ R, r ] = deconv( Ys(i,:), X );
  plot( R );
  Ds(i,:) = R;
  str = sprintf( "Senoidal recuperada de %i Hz", freq(i) );
  title( str );
end