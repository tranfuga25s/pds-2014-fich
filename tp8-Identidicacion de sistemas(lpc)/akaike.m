function[ip]=akaike(ep,ne,orden)
    %ne es el numero efectivo de muestras en la se�al
    % calculo de ip para cada orden
    for i=1:orden
        ip(i)=log(ep(i))+2*i/(ne);
    end
end
