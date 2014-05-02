% frutaaaa????

%Bode plot of frequency response, magnitude and phase of frequency response
clear all
close all
clc
s=tf('s');
%sys=1/(s^4 + 2.613*s^3 + 3.414*s^2 + 2.613*s + 1)
sys=(12500*s)/(44*s^2+60625*s+625*10^4)
% CONTINUOS Transfer function:
%                     1
%-----------------------------------------
%s^4 + 2.613 s^3 + 3.414 s^2 + 2.613 s + 1
T=0.01; %T=1/fm
% DISCRETE Transfer function - EULER:
sysz_e=c2d(sys,T,'zoh')
% DISCRETE Transfer function - BILINEAR:
sysz_b=c2d(sys,T,'tustin')

figure('name','Sistema continuo');
bode(sys);
figure('name','Transformacion conforme Euler');
bode(sysz_e)
figure('name','Transformacion conforma Bilinear');
bode(sysz_b)