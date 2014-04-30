% Trabajos Practico 3
% Ejercicio 6
% Dependencias: ecg.txt, eeg.txt, emg.txt, presion.txt, respiracion.txt, frecuencias.txt
clear all;
close all;

% ECG
ecg = load( 'ecg.txt' );
fm_ecg = 250; % en Hz
TFECG = fft( ecg );
tam = length( TFECG );
medio = floor( tam / 2 );
TFECGR = abs( real( [ TFECG(medio:tam-1) TFECG(medio:tam-1) ] ) );

% EEG
eeg = load( 'eeg.txt' );
fm_eeg = 250; % en Hz
TFEGG = fft( eeg );
tam = length( TFECG );
medio = floor( tam / 2 );
TFREGG = abs( real( [ TFECG(medio:tam-1) TFECG(medio:tam-1) ] ) );

% EMG
emg = load( 'emg.txt' );
fm_emg = 13000; % en Hz
TFEMG = fft( emg );
tam = length( TFEMG );
medio = floor( tam / 2 );
TFREMG = abs( real( [ TFEMG(medio:tam-1) TFEMG(medio:tam-1) ] ) );

% Presion
presion = load( 'presion.txt' );
fm_presion = 250; % en Hz
TFPresion = fft( presion );
tam = length( TFPresion );
medio = floor( tam / 2 );
TFRPresion = abs( real( [ TFPresion(medio:tam-1) TFPresion(medio:tam-1) ] ) );

% Respiracion
respiracion = load( 'respiracion.txt' );
fm_presion = 250; % en Hz
TFRespiracion = fft( respiracion );
tam = length( TFRespiracion );
medio = floor( tam / 2 );
TFRRespiracion = abs( real( [ TFRespiracion(medio:tam-1) TFRespiracion(medio:tam-1) ] ) );

% El ancho de banda se refiere al lugar en donde estadisticamente se encuentra el 95% de la energia de la señal
figure(1);
subplot( 5, 1, 1 );
plot( ecg );
title( "ECG" );
subplot( 5, 1, 2 );
plot( eeg );
title( "EEG" );
subplot( 5, 1, 3 );
plot( emg );
title( "EMG" );
subplot( 5, 1, 4 );
plot( presion );
title( "Presion" );
subplot( 5, 1, 5 );
plot( respiracion );
title( "Respiracion" );

figure(2);
subplot( 5, 1, 1 );
plot( TFECGR );
title( "ECG" );
subplot( 5, 1, 2 );
plot( TFREGG );
title( "EEG" );
subplot( 5, 1, 3 );
plot( TFREMG );
title( "EMG" );
subplot( 5, 1, 4 );
plot( TFRPresion );
title( "Presion" );
subplot( 5, 1, 5 );
plot( TFRRespiracion );
title( "Respiracion" );