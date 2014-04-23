% Guia de trabajos practicos 3
% Ejercicio 2

f1=2; % en Hz
f2=4; % en Hz
ti = 0; % en Seg
tf = 1; % en Seg

fm = 100; % en Hz
fase = 0; % en radianes

[ t, S2 ] = senoidal( 1, f2, fase, fm, ti, tf ); % Senoidal de 4 Hz
[ t, S1 ] = senoidal( 1, f1, fase, fm, ti, tf ); % Senoidal de 2 Hz
SC = square( 2*pi*t*f1 ); % Onda cuadrada de 2 Hz

figure(1);
subplot( 3, 1, 1 );
plot( t, S1 );

subplot( 3, 1, 2 );
plot( t, S2 );

subplot( 3, 1, 3 );
plot( t, SC );
axis( [ 0 1 -1.1 1.1 ] );

% Verificar que los pares de señales sean ortogonales
tolerancia = 0.0001;
% Producto interno entre S1 y S2
display( "Prod int S1<->S2");
R1 = dot( S1, S2 )
if( R2 < tolerancia ) 
  display( 'Ortogonal' );
else
  display( 'No Ortogonal' );
end

% Producto interno entre S1 y onda cuadrada
display( "Prod int S2<->SC");
R2 = dot( S1, SC )
if( R2 < tolerancia ) 
  display( 'Ortogonal' );
else
  display( 'No Ortogonal' );
end

% Producto interno entre S2 y onda cuadrada
display( "Prod int S1<->SC");
R3 = dot( S2, SC )
if( R3 < tolerancia ) 
  display( 'Ortogonal' );
else
  display( 'No Ortogonal' );
end

figure(2);
bar( [ R1 R2 R3 ] );