function [pitch]=f0ac(x, fs)
    [m i]=max(x); % busco el maximo y su indice
    ac=x(i:end); % trabajo con la 2da mitad. Es simetrica la AC
    % tengo que saltear el primer pico
    % cuento 2ms (es lo que se toma generalmente)
    comienzo = floor(2*fs/1000); % desde donde empiezo a buscar
    [m i]=max(ac(comienzo:end)); % busco el maximo y su indice
    % calculo el Pitch como fs/#deMuestra:
    pitch=fs/(comienzo+i); % tengo que compensar el indice con las muestras
                           % que deje afuera
end