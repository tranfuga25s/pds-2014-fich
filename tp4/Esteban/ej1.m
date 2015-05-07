% Guia de trabajos practicos Nº 4
% Ejercicio 1
clear all;
close all;

t = 0:0.1:2;

% Impulso
x = rand( size(t) );
x(1) = 1;

% Item 1
A = 1;
f = 10; % en Hz
T = 1;
g = A * sin( 2*pi*f*t*T );

y1 = A*sin( 2*pi*f*t*T).*x;

figure( 1 );
plot( y1 );
title("y[n]=Asen(2*pi*f*n*T)");

% Item 2
x2 = 0:0.1:1;
y2 = zeros(size(x2));
for i=1:10
    for j=1:i
        y2(i) += x2(j);
    end
end

figure(2);
plot( y2 );
title("y[n]=sum(x[n])");

% Item 3
x3 = 0:0.1:2;
y3 = zeros(20);
n = 3;
for i=1+n:20-n
    for j=1:size(x)-2*n
        y3(i) = y3(i) + x3(j);
    end
end
figure(3);
plot(y3);
title("y[n]=sum(x[n],+n0)");

% Item 4
y4 = zeros( size( x ) );
n = 3;
for i=n:size(x)
    y4(i-n) = x(i);
end

figure(4);
plot( y4 );
title( "y = x[ n -no ]");

% Item 5
x5 = 0:0.1:2;
y5 = exp( x5 );

figure( 5 );
plot( y5 );
title( "y = e^x[n]" );

% Item 6
y6 = x + 2;
figure( 6 );
plot( y6 );
title( "y = x[n]+2");

% Item 7
x7 = 0:0.1:1;
y7 = zeros(10);
for i=1:10
  y7(i) = i*x7(i);
end
figure( 7 );
plot( y7 );
title( "y7 = n*x[n]");