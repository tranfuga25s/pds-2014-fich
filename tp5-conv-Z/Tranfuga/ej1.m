% Ejercicio 1

fm = 100;

ti = 0;
tf = 2;
td = 1/fm;

t=ti:td:tf-td;
f = 10; % en hz

x = sin(2*pi*f*t);
[m,n]=size(x);


h = 1:10;

figure(1);
subplot(2,1,1);
plot(x);
subplot(2,1,2);
plot(h);

% Convoluciono la señal
c = conv(x, h);

figure(2);
plot(c);