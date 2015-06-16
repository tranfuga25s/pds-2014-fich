% PROCESAMIENTO DIGITAL DE LA VOZ
% Ejercicio 2
% limpio memoria y pantalla
clear all; clc;

% cargamos la señal de audio Original 'sent.txt'
y = load('sent.txt');
fs = 8000; % 8kHz

% Genero un ruido blanco gaussiano que voy a adicionar
r = randn(size(y));

% contamino la señal con SNR de 0, 20 y 50dB
sent0dB  = contaminar(y,r,0);   % 0dB
sent20dB = contaminar(y,r,20); % 20dB
sent50dB = contaminar(y,r,50); % 50dB

tamanio_ventana = 30*fs/1000; % tamaño de la ventana a 30ms
solapamiento = 10*fs/1000; % solapamiento de 10ms
N=length(y); % largo de la señal

% armo dos vectores y voy guardando los valores de energia y
% cruces por cero de cada ventana
% vEnergia=[];
% vCruces=[];
% vREC=[]; % vector con la relacion Energía-Cruces

% vectores para autocorrelacion y cepstrum
vAutoc=[];
vCeps=[];

for i=1:solapamiento:N-tamanio_ventana
    ventana=sent50dB(i:i+tamanio_ventana-1); % ACA VOY CAMBIANDO LA SEÑAL QUE
                                             % QUIERO ANALIZAR Y GRAFICAR
    ventana=ventana.*hamming(length(ventana));
    % calculo la energia
%     ene=energia(ventana);
%     cru=crucesPorCero(ventana);
%     rec=log(ene/cru);
%     vEnergia=[vEnergia ene];
%     vCruces=[vCruces cru];
%     vREC=[vREC rec];
    if(sonoro(ventana))
        % realizo los calculos mencionados
        ac=xcorr(ventana); % autocorrelacion
        cs=ifft(log(abs(fft(ventana)))); % cepstrum
        autoc=f0ac(ac,fs);
        cepst=f0cp(cs,fs);
        % guardo los valores en el vector
        vAutoc=[vAutoc autoc];
        vCeps=[vCeps cepst];
    else
        vAutoc=[vAutoc 0]; % pongo un 0 porque es sordo
        vCeps=[vCeps 0]; % igual que el anterior
    end
end

% Grafico pitch detectado con autocorrelacion y con cepstrum
figure(1)
subplot(2,1,1)
plot(vAutoc)
xlabel('Ventanas 30ms'); ylabel('Pitch (Hz)');
title('Autocorrelación');
axis([0 length(vAutoc) 0 max(vAutoc)]);

subplot(2,1,2)
plot(vCeps)
xlabel('Ventanas 30ms'); ylabel('Pitch (Hz)');
title('Cepstrum');
axis([0 length(vCeps) 0 max(vCeps)]);



% Grafico la señal original y las otras 3 con ruido adicionado
% figure(2)
% % tiempo de la señal
% t=(0:length(y)-1)/fs;
% 
% subplot(4,1,1)
% plot(t,y)
% xlabel('Tiempo (s)');
% ylabel('Amplitud');
% title('Señal Original sent.txt');
% 
% subplot(4,1,2)
% plot(t,sent0dB,'black')
% xlabel('Tiempo (s)');
% ylabel('Amplitud');
% title('Señal contaminada con SNR 0dB');
% 
% subplot(4,1,3)
% plot(t,sent20dB,'black')
% xlabel('Tiempo (s)');
% ylabel('Amplitud');
% title('Señal contaminada con SNR 20dB');
% 
% subplot(4,1,4)
% plot(t,sent50dB,'black')
% xlabel('Tiempo (s)');
% ylabel('Amplitud');
% title('Señal contaminada con SNR 50dB');



% Grafico señal original, energia, cruces por cero y relacion e/c
% figure(3)
% subplot(4,1,1)
% plot(y)
% subplot(4,1,2)
% plot(vEnergia)
% subplot(4,1,3)
% plot(vCruces)
% subplot(4,1,4)
% plot(vREC)
% grid on;


% Grafico el espectrograma del audio y la relacion e/c para
% determinar experimentalmente el valor del umbral

% figure(4)
% subplot(2,1,1)
% [S,F,T,P] = spectrogram(y,256,250,256,fs);
% surf(T,F,10*log10(P),'edgecolor','none'); axis tight; 
% colormap gray;
% view(0,90);
% xlabel('Tiempo (s)'); ylabel('Frecuencia (Hz)');
% title('Espectrograma sent.txt');

% subplot(2,1,2)
% plot(vREC)
% axis([0 length(vREC) min(vREC) max(vREC)]);
% hold on;
% recta=-5.8*ones(1,length(vREC)); % recta del umbral experimental = -5.8
% plot(recta,'r')
% xlabel('Ventanas de 20ms');
% title('Relacion Energia/Cruces por Cero');
% legend('log(ener/cruces)','umbral');
