close all
 clear all
 clc
 
%[Z,P,K]=TF2ZP(1,[1 -0.5 0.25])
clear all
close all
clc
[Z,P,K] = tf2zpk(1,[1 -0.5 0.25])
zplane(Z,P);
fm = 10000;
N = 10000;
df=fm/N;
k = 1:N;
r=1
z =r* exp((-1i*2*pi*k)/N);
Hf = 1 ./ (1 - 0.5*z.^-1 + 0.25*z.^-2);
sys=tf(0.1,[1 -0.5 0.25])
figure,plot(abs(Hf))

%otra forma de hacerlo
w2=[0:1/fm:2*pi-(1/fm)];
r=1;
z2=r* exp((-1i*w2));
Hf2 = 1 ./ (1 - 0.5*z.^-1 + 0.25*z.^-2);
figure,plot(abs(Hf2))