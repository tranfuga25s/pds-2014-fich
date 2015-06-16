% Ejercicio 2

ti = 0;
tf = 2;

fm = 100;
td = 1/fm;

t =ti:td:tf-td;

f1 = 10;
f2 = 20;

x = sin(2*pi*f2*t);
y = sin(2*pi*f1*t);

figure(1);
subplot(2,1,1);
plot(t,y);
subplot(2,1,2);
plot(t,x);