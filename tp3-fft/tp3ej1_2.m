[t,S1] = senoidal(1,10,0,1000,0,1);
[t,S2] = senoidal(4,20,0,1000,0,1);
S=S1+4.*S2;
N=length(S);
X=fft(S);

sumaS = 0;
sumaX = 0;
for t=1:N
    sumaS = sumaS + S(t)*S(t);
    sumaX = sumaX + abs(X(t))*abs(X(t));
end
sumaX = sumaX/N;
display(sumaS);
display(sumaX);
%da igual!!!