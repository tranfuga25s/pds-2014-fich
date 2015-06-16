function [ R ] = Ejercicio1( senal, tam_ventana, solapamiento, tipo )
    largo = length( senal );
    paso = tam_ventana - solapamiento;
    frames = floor( largo / paso );
    R = zeros( tam_ventana/2 , frames );
    for i=1:frames-1
        finicio = (i-1)*paso+1;
        ffin = finicio+tam_ventana;
        if( ffin > largo ) 
            ffin = largo;
        end
        muestra = senal( 1, finicio:ffin );
        ventana = window( tipo, length( muestra ) ); 
        ventaneo = muestra .* ventana';
        tem = abs( fft( ventaneo ) );
        R(:,i) = tem( 1, 1: floor( length( tem )/2 ) ) .^ 2;
    end
    imagesc( R );
    title( 'Espectrograma' );
    xlabel( 'Tiempo' );
    ylabel( 'Frecuencia' );
    axis xy;
end