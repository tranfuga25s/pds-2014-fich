%ejercicio 5
clear all
close all
clc
fm=200;
dt=1/fm;
t = 0:dt:2*pi;
x = sin(2*pi*50*t)+sin(2*pi*275*t)+sin(2*pi*5153*t)+sin(2*pi*200*t);
%plot(t,x),title('se�al')
%pause

%filtro fir
fm = 500;
n = 200;
wn = 60/(fm/2); %frecuencia de corte
%fir orden n=200,
%normalizada con respecto a la frecuencia de Nyquists= 60/(fm/2)
%pasa bajo = low
%ventana= hamming
b = fir1(n,wn,'low',hamming(n+1));
h = freqz(b)
plot(abs(h)),xlabel('frecuencia'),ylabel('mag'),title('Respuesta en frecuencia FIR'),grid on
pause
freqz(b)
pause
y = filter(b,1,x);
figure('name','Se�al Vz Se�al Filtrada FIR');
subplot(3,1,1),plot(x);xlabel('tiempo');title('Se�al')
subplot(3,1,2),plot(y);xlabel('tiempo');title('Se�al Filtrada FIR')
subplot(3,1,3),plot(abs(fftshift(fft(fftshift(y)))));xlabel('frecuencia');title('fft se�al filtro fir')

%filtro iir
pause
n=20;
wn=60/(fm/2);
[num,denom]=butter(n,wn);
y2=filter(num,denom,x);
figure('name','Se�al Vz Se�al Filtrada IRR');
subplot(3,1,1),plot(x);xlabel('tiempo');title('Se�al')
subplot(3,1,2),plot(y2);xlabel('tiempo');title('se�al filtrada por iir');
subplot(3,1,3),plot(abs(fftshift(fft(fftshift(y2)))));xlabel('frecuencia');title('fft se�al filtro IRR')
pause

