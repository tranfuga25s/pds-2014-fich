% Función senoidal
% 
% A = Amplitud
% f = Frecuencia ( en Hz )
% tita = Fase inicial
% fm = Frecuencia de Muestreo
% t_ini = tiempo inicial
% t_fin = tiempo final
function [t,x]=senoidal(A,f,tita,fm,t_ini,t_fin)
  dt=1/fm;
  t=t_ini:dt:t_fin-dt;
  x=A*sin(2*pi*f*t+tita);
end
% Ejemplo:
%[t,x]=senoidal(1,5,0,100,0,2)
