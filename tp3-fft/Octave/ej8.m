% Trabajo Pratico 3
% Ejercicio 8

clear all;
close all;


f = 27; % en Hz
fm = 100; % en Hz
dt=1/fm;
t=0:dt:1;
x = 2*sin( 2*pi*f*t );

TF = fft( x );
stem( abs( real( TF ) ) );