
% %item 5
% %los zeros se deben agregar al final de la se�al
% %si se agregan al principio no da!!
% 
% % En la convoluci�n circular se observa que la salida y[n] es peri�dica y adem�s 
% % existe solapamiento. El solapamiento se origina porque las repeticiones de x[n] y h[n]
% % est�n demasiado pr�ximas entre s�. Si se aumenta el periodo, insertando m�s ceros, el 
% % solapamiento desaparece. En este caso cada periodo de y[n] se asemejar�a a la correspondiente 
% % a una convoluci�n lineal.
% %  
% %    En general se puede afirmar que para evitar el solapamiento en una convoluci�n circular 
% %    de dos funciones con N1 y N2 valores distintos de cero, se debe cumplir la relaci�n:
% % .
% % 
% %     Aplicando estas ideas al esquema, Figura 8.17, que representa el filtrado digital,
% %     implementando la FFT en base 2, se elige el m�nimo valor de N que cumpla la condici�n .
% %     La IDFT mediante la cual se calcula la secuencia y[n] contiene (N1 + N2 - 1) valores,
% %     similares a los obtenidos por una convoluci�n lineal de x[n] y h[n] ,
% %     seguidos de N - (N1 + N2 - 1) ceros. 
clear all
close all
clc
%[t,x]=senoidal(A,f,tita,fm,t_ini,t_fin)
[t,s1]=senoidal(1,1,0,100,0,3);
[t,s2]=senoidal(1,3,0,100,0,3);
%item 1 y item 2
y1=convolucion(s1,s2);
subplot(4,1,1)
plot(y1);
title('convolucion lineal');

%agregando MAS DE N-1 ceros para que se vea al efecto real de agregar ceros
%en la conv circular
s5=[s1(1:300) zeros(1,1000)];
s6=[s2(1:300) zeros(1,1000)];
y2=ifft(fft(s5).*fft(s6));
subplot(4,1,2)
plot(y2);
title('convolucion lineal a partir de circular agregando mas de N-1');


%agregando la cantidad de ceros justa ... jejej lo que da al profe y depues
%pregunta el caso de arriba =P
s5=[s1(1:300) zeros(1,299)]; %se agregan N-1 ceros a cada se�al a convolucionar
s6=[s2(1:300) zeros(1,299)];
y3=ifft(fft(s5).*fft(s6));
subplot(4,1,3)
plot(y3);
title('aplicando la propiedad, agregando N-1 zeros a las se�ales');
subplot(4,1,4)
plot(y3-y1);
title('diferencia entra Conv Lineal & Conv Lineal a partir de Circular agregando ceros');
