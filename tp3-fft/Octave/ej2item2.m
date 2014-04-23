% Guia de trabajos practicos 3
% Ejercicio 2

f1=2; % en Hz
f2=4; % en Hz
ti=0; % en Seg
tf=1; % en Seg

fm = 100; % en Hz
fase = 0; % en radianes

[ t, S2 ] = senoidal( 1, f2, fase, fm, ti, tf ); % Senoidal de 4 Hz
[ t, S1 ] = senoidal( 1, f1, fase, fm, ti, tf ); % Senoidal de 2 Hz
SC = square( 2*pi*t*f1 ); % Onda cuadrada de 2 Hz

TS1 = fft( S1 );
TS2 = fft( S2 );
TSC = fft( SC );

figure(1);
subplot( 3, 1, 1 );
plot( t, S1 );

subplot( 3, 1, 2 );
plot( t, S2 );

subplot( 3, 1, 3 );
plot( t, SC );
axis( [ 0 1 -1.1 1.1 ] );

figure(2);
subplot( 3, 1, 1 );
[x, ERS1 ] = espectro_frecuencia( TS1 );
stem( t, ERS1 );

subplot( 3, 1, 2 );
[x, ERS2 ] = espectro_frecuencia( TS2 );
stem( t, ERS2 );

subplot( 3, 1, 3 );
[x, ERSC ] = espectro_frecuencia( TSC );
stem( t, ERSC );

% Verificar que los pares de señales sean ortogonales
tolerancia = 0.0001;
% Producto interno entre S1 y S2
% DOT( X, Y ) = sum (conj (X) .* Y, dim )
display( "Prod int TS1<->TS2");
R1 = dot( TS1, TS2 )
if( R2 < tolerancia ) 
  display( 'Ortogonal' );
else
  display( 'No Ortogonal' );
end

% Producto interno entre S1 y onda cuadrada
display( "Prod int TS2<->TSC");
R2 = dot( TS1, TSC )
if( R2 < tolerancia ) 
  display( 'Ortogonal' );
else
  display( 'No Ortogonal' );
end

% Producto interno entre S2 y onda cuadrada
display( "Prod int TS1<->TSC");
R3 = dot( TS2, TSC )
if( R3 < tolerancia ) 
  display( 'Ortogonal' );
else
  display( 'No Ortogonal' );
end


% Grafico comparativo
figure(3);
subplot( 2, 1, 1 );	
bar( [ real( R1 ) real( R2 ) real( R3 ) ] );
title( "Producto interno ( parte real )" );

subplot( 2, 1, 2 );
bar( [ imag( R1 ) imag( R2 ) imag( R3 ) ] );
title( "Producto interno ( parte imaginaria )" );