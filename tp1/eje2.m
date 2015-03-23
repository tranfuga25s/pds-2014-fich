% Trabajo Practico Nº 1
% Ejercicio 2

ti = 0;
tf = 1;
fm = 1000;
dt = 1/fm;
[t, x] = senoidal( 2, 10, 0, fm, ti, tf);

xi = zeros(1, length(x));
% Inversión
n = length(x);
for i=1:n
    xi(i) = x(n-i+1);
end

figure(1);
subplot(2, 1, 1);
plot(x);
title('Original');
subplot(2, 1, 2);
plot(xi);
title('Inversión');


% Rectificacion
xr = zeros(1, length(x));
for i=1:n
  if x(i) >= 0
    xr(i) = x(i);
  else
    xr(i) = x(i) * (-1.0);
  end
end

figure(2);
subplot(2, 1, 1);
plot(x);
title('Original');
subplot(2, 1, 2);
plot(xr);
title('Rectificacion');

% Cuantización de 8 niveles
xc = zeros(1, length(x));
min = 1000;
max = -1000;
for i=1:n 
  if x(i) < min
      min = x(i);
  end
  if x(i) > max
      max = x(i);
  end
end

% Niveles de Cuantización
ncuanti = 8;
dominio = abs(max - min);
h = dominio/ncuanti;

for i=1:n
    x(i) = x(i) + abs(min);
end

for i=1:n
    if (x(i) < 0)
        xc(i) = 0;
    else 
        if (x(i) >= (ncuanti-1)*h) 
           xc(i) = (ncuanti-1)*h; 
        else
           xc(i) = h * fix(x(i)/h);
        end
    end
end

for i=1:n
    xc(i) = xc(i) - abs(min);
    x(i) = xc(i) - abs(min);
end

figure(3);
subplot(2, 1, 1);
plot(x);
title('Original');
subplot(2, 1, 2);
plot(xc);
title('Cuantificación de 8 niveles');
