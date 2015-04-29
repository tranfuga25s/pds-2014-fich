%ejercicio 8
clear all
clc

% Señal conocida
hfile = 'handel.wav';
[y1, Fs1, nbits1, readinfo1] = wavread(hfile);

tam = size(y1);
x=rand(1,tam(1))';

suma=y1+x;
subplot(3,1,1);
plot(y1);
title('Señal original');

subplot(3,1,2);
plot(x);
title('Ruido');

subplot(3,1,3);
plot(suma);
title('Suma');

% Calculo de potencias
pS=potencia(y1);
pR=potencia(x);

divisor_consola();
snrDb=10*log10(pS/pR)

% Señal modificada
xx=2*x;
pS=potencia(y1);
pR=potencia(xx);

snrDb=10*log10(pS/pR)

 
 
 x0=x*sqrt(pS/pR);
 pR0=potencia(x0);
 snrDb0=10*log10(pS/pR0)
 sound(x0+y1, Fs1);
% %%
 alpha100=sqrt(pS/((10^10)*pR));
 x100=x*alpha100;
 pR100=potencia(x100);
 snrDb100=10*log10(pS/pR100)
% 
 %sound(x100+y1, Fs1);