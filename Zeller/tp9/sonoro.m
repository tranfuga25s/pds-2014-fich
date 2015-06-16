function [R] = sonoro(x)
    ener=energia(x);
    cruces=crucesPorCero(x);
    REC=log(ener/cruces);
    if(REC >= -5.8)
        R=true;
    else
        R=false;
    end
end