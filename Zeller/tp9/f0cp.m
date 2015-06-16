function [pitch]=f0cp(x,fs)
    % como el cepstrum viene dado de forma simetrica
    % me quedo con la 1er mitad
    cp=x(1:floor(length(x)/2));
    % el habla humana tiene un umbral audible desde 30 a 300Hz
    % entonces comienzo a buscar desde los 350Hz en adelante
    comienzo=floor(fs/350); % desde que muestra comienzo la busqueda
    [m i]=max(cp(comienzo:end));
    pitch=fs/(comienzo+i); % compenso las muestras que deje afuera
end
