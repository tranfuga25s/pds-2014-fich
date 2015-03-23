
[t,xs] = senoidal(10, 20, 0, 400, 0, 1);
subplot(3, 1, 1);
plot(xs);
title('Senoidal');

subplot(3, 1, 2);
[t,xsy] = sincronica(20, 400, -0.25, 0.25);
plot(xsy);
title('Sinc');
axis([0, 200, -0.5, 1.1]);

subplot(3, 1, 3);
[t, xc] = cuadrada( 0, 1, 20, 400, 0);
plot(xc);
title('Cuadrada');
axis([0, 100, -1.1, 1.1]);
