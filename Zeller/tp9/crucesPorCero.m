function [c] = crucesPorCero(x)
    N=length(x);
    c=0;
    for i=1:N-1
        if(x(i)*x(i+1)<0)
            c=c+1;
        end
    end
end