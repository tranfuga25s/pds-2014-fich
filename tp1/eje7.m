%ejercicio 7
%verificar estacionariedad y ergoricidad
%Calcule la media y la varianza ahora, 
%utilizando las funciones Matlab mean y std(std al cuadrado = a varianza).
clear all
clc
tol=0.002; % Empirica para este ejercicio
x=randn(500,500);
%display ('estacionalidad ');
mest=mean(x);
vest=std(x).^2;
a=mean(mest); % La desviacion de los promedios de cada fila
b=mean(vest);
%display ('ergo ');
merg=mean(x,2);
verg=std(x,0,2).^2;
c=mean(merg); % La desviacio de los promedios de cada columna
d=mean(verg);
 if ((a-c)<tol && (b-d)<tol && abs((a-c)-(b-d)) < tol )
     display('ergodica');
 else
     display('no ergodica');
 end
 
 %para que una se�al sea estacionaria se pide que verifique las propiedades
 %estadisticas de la se�al a lo largo de todos los tiempo para todas la
 %realizaciones. Por lo tanto, como esta señal tiene una distribucion
 %normal debe verificar que para cada ti de todas la realizaciones
 %la varianza tienda  (desvio al cuadrado) a 1, o sea, la media del desvio
 %tienda a 1, y que la media de las medias tienda a cero.
