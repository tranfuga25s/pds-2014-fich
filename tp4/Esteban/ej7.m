% Ejercicio 7

x = [ 1 0 0 0 0 0 0 0 0];
yf = zeros(length(x)+4);

for i=3:length(x) 
  yf(i) = x(i-2) + yf(i-2);
end

figure(1);
subplot(2,1,1);
stem(x);
subplot(2,1,2);
stem(yf);
title("Item 1");

x = [ 0 1 0 0 0 0 0 0 0];
y2 = zeros(length(x)+3,1);
for i=2:length(x)
  y2(i) = x(i) + x(i-1) * 0.5;
end

figure(2);
stem(y2(3:length(y2)));
title("Item 2");

x = [ 0 1 0 0 0 0 0 0 0];
y3 = zeros(length(x)+3,1);
for i=2:length(x)
  y3(i) = x(i) + 2 * x(i-1) + y3(i-1);
end

figure(3);
stem(y3(2:length(y3)));
title("Item 3");


x = [ 0 1 0 0 0 0 0 0 0];
y4 = zeros(length(x)+4,1);
for i=3:length(x)
  y4(i) = x(i) + 0.5 * y4(i-1) + 0.25* y4(i-2);
end

figure(4);
stem(y3(3:length(y4)-4));
title("Item 4");


x = [ 0 1 0 0 0 0 0 0 0];
y5 = zeros(length(x)+3,1);
for i=2:length(x)
  y5(i) = x(i) + x(i-1) - y5(i-1);
end

figure(5);
stem(y5(2:length(y5)));
title("Item 5");

