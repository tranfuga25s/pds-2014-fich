clear all
clc
[t,S1] = senoidal(1,10,0,1000,0,1);
[t,S2] = senoidal(4,20,0,1000,0,1);
S=S1+4.*S2;
figure(1)
plot(t,S);

TS = tdf(S);

EspectroMagnitud = abs(TS);
figure(2);
stem(EspectroMagnitud);