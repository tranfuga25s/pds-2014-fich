
function [t,xx] = sincronica(fs, fm, t_ini, t_fin)
 dt = 1/fm; 
 t = t_ini:dt:t_fin-dt;
 tt = 2*pi*fs*t;
 xx = zeros(1, length(tt));
 n = length(tt);
 for r=1:n
   if t(r)==0
     xx(r)=1;
   else
     xx(r)=sin(tt(r))/tt(r);
   end
 end
end
