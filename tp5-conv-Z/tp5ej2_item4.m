%convolucion circular: para se�ales periodicas, con infinitos periodos
clear all
close all
clc
%[t,x]=senoidal(A,f,tita,fm,t_ini,t_fin)
[t,s1]=senoidal(1,1,0,100,0,3);
[t,s2]=senoidal(1,3,0,100,0,3);
%item 1 y item 2
y1=conv(s1,s2);
subplot(2,1,1)
plot(y1);
title('convolucion lineal');
y2=ifft(fft(s1).*fft(s2));%%multipl en frec es conv en el tiempo
subplot(2,1,2)
plot(y2);
title('convolucion Circular');


