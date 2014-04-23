% Guia de trabajos practicos 3
% Ejercicio 2

f1=2; % en Hz
f2=3.5; % en Hz
ti=0; % en Seg
tf=1; % en Seg

fm = 100; % en Hz
fase = 0; % en radianes

[ t, S2 ] = senoidal( 1, f2, fase, fm, ti, tf ); % Senoidal de 4 Hz
[ t, S1 ] = senoidal( 1, f1, fase, fm, ti, tf ); % Senoidal de 2 Hz

TS1 = fft( S1 );
TS2 = fft( S2 );

figure(1);
subplot( 2, 1, 1 );
plot( t, S1 );

subplot( 2, 1, 2 );
plot( t, S2 );


figure(2);
subplot( 2, 1, 1 );
[x, ERS1 ] = espectro_frecuencia( TS1 );
stem( t, ERS1 );

subplot( 2, 1, 2 );
[x, ERS2 ] = espectro_frecuencia( TS2 );
stem( t, ERS2 );

% Verificar que los pares de señales sean ortogonales
tolerancia = 0.0001;
% Producto interno entre S1 y S2
% DOT( X, Y ) = sum (conj (X) .* Y, dim )
display( "Prod int TS1<->TS2");
R1 = dot( TS1, TS2 )
if( R2 < tolerancia ) 
  display( 'Ortogonal en dominio frecuencia' );
else
  display( 'No Ortogonal en dominio frecuencia' );
end

R2 = dot( S1, S2 );
if( R2 < tolerancia )
  display( 'Ortogonal en dominio tiempo' );
else 
  display( 'No Ortogonal en dominio tiempo' );
end

% Grafico comparativo
figure(3);
subplot( 2, 1, 1 );
bar( [ R2 ] );
title( "Producto interno ( dominio tiempo )" );

subplot( 2, 1, 2 );
bar( [ real( R1 ) ] );
title( "Producto interno ( dominio frecuencial )" );