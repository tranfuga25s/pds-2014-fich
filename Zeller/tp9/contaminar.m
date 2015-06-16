function [s]=contaminar(x, r, snr)
    % calculo las potencias de la señal original y el ruido
    Px=mean(x.^2);
    Pr=mean(r.^2);
    % calculo alfa para ensuciar la señal
    alfa=sqrt(Px/((10^(snr/10))*Pr));
    s = x + alfa.*r; % salida contaminada
end
