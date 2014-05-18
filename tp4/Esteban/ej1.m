% Guia de trabajos practicos Nº 4
% Ejercicio 1
clear all;
close all;

t = 0:0.1:1;

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

% Item 2
y2 = zeros( size( x ) );
for i=1:size(x) 
    for j=i:size(x)
        y2(i) = y2(i) + x(j);
    end
end

figure(2);
plot( y2 );

% Item 3
y3 = zeros( size( x ) );
n = 3;
for i=1+n:size(x)-n
    for j=1:size(x)-2*n
        y3(i) = y3(i) + x(j);
    end
end
figure(3);
plot( y3 );

% Item 4
y4 = zeros( size( x ) );
n = 3;
for i=n:size(x)
    y4(i-n) = x(i);
end

figure(4);
plot( y4 );

% Item 5
y5 = exp( x );

figure( 5 );
plot( y5 );
title( "y = e^x[n]" );

% Item 6
y6 = x + 2;
figure( 6 );
plot( y6 );
title( "y = x[n]+2");

% Item 7
y7 = n+x;
figure( 7 );
plot( y7 );
title( "y7 = n*x[n]");

