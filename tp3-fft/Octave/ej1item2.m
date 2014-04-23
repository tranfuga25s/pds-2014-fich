% Guia de Trabajos Practicos Nº 3
% Ejercicio 1.2
% Verificación de la relación de parseval
clear all;
f1 = 10;
f2 = 20;
fm = 1/0.001;
tinicio = 0;
tfin = 1;
[t,S1]=senoidal( 1, f1, 0, fm, tinicio, tfin );
[t,S2]=senoidal( 1, f2, 0, fm, tinicio, tfin );
S = S1 + S2;

EF = fft( S );

N = length( S );

% Primera parte de la ecucación
E1 = 0;
for n=1:N 
  E1 += S(n)^2;
end

E2 = 0;
for k=1:N
  E2 += abs(EF(k))^2;
end
E2 = E2/N;

display('Sumatoria sobre la señal' );
E1
display('Sumatoria sobre la fft' );
E2
display('Diferencia');
E1-E2