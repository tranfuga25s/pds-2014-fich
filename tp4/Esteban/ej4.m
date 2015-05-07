% Ejercicio 4
% Guia 4

x = 0:0.01:1;
x(1)=0; %% Para testear la condicion 1
y1 = zeros(10,1);
y2 = zeros(10,1);

for i=2:9
  y1(i) = x(i) + 0.5 * y1(i-1);
end

for n=1:10
  y2(n) = x(n) .* sin(2*pi*10*n);
end

% Condicion 1
if (y1(1) == 0 ) 
  display("Sistema lineal cumple");
else
  display("Sistema lineal no cumple la primera condicion");
end

if (y2(1) == 0 ) 
  display("Sistema no lineal cumple primera condicion");
else
  display("Sistema no lineal no cumple la primera condicion");
end

% Condicion 2
t = 0:0.01:1-0.01;
y3 = sin(2*pi*10*t);

for i=2:length(y3)-1
  y4(i) = y3(i) + 0.5 * y4(i-1);
end

figure(1);
title("sistema lineal");
subplot(2,1,1);
stem(abs(fft(y3)));
subplot(2,1,2);
stem(abs(fft(y4)));

for n=1:length(y3)
  y6(n) = y3(n) .* sin(2*pi*10*n);
end


figure(2);
title("Sistema no lineal");
subplot(2,1,1);
stem(abs(fft(y3)));
subplot(2,1,2);
stem(abs(fft(y6)));