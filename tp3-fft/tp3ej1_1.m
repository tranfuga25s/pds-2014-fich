%clear all
%clc
%[t,S1] = senoidal(1,10,0,1000,0,10);
%[t,S2] = senoidal(4,20,0,1000,0,10);
[t,S1] = senoidal(1,100,0,250,0,1);
[t,S2] = senoidal(2,50,0,250,0,1);
S=S1+S2;
figure(1)
plot(t,S1,t,S2,t,S);
%S=[0 0 0 0 0 0 0 4]; %'??
%&N=length(S);
%X=fftshift(fft(fftshift(S1)));%para que me retorne la transformada con el cero en el medio y sea mas entendible

%X=fft(S1);
X=tdf(S);
%X2=fft(S2)
%subplot(2,1,1);
%plot(S1)
%figure(2)
bar(abs(X));

%subplot(2,1,2);
%plot(S2,'r-')
%bar(abs(X2))
%la funcion tdf parece andar bien