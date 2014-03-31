%7
%plot(S);
%wavwrite(S,'numeros.wav');
close all
clear all
clc
fase=0:0.01:pi;
hfile = 'corte_a.wav';
[y1, Fs1, nbits1, readinfo1] = wavread(hfile);
hfile = 'corte_b.wav';
[y2, Fs1, nbits1, readinfo1] = wavread(hfile);
hfile = 'corte_c.wav';
[y3, Fs1, nbits1, readinfo1] = wavread(hfile);
hfile = 'corte_d.wav';
[y4, Fs1, nbits1, readinfo1] = wavread(hfile);
hfile = 'corte_e.wav';
[y5, Fs1, nbits1, readinfo1] = wavread(hfile);
hfile = 'corte_f.wav';
[y6, Fs1, nbits1, readinfo1] = wavread(hfile);
hfile = 'corte_h.wav';
[y7, Fs1, nbits1, readinfo1] = wavread(hfile);
largo1=length(y1);
largo2=length(y2);
largo3=length(y3);
largo4=length(y4);
largo5=length(y5);
largo6=length(y6);
largo7=length(y7);

%[t,F1]=senoidal(1,697,0,8000,0,3);
% F1=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,697,fase(i),8000,0,3);
%      F1=F1+ss';
% end
% F2=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,770,fase(i),8000,0,3);
%      F2=F2+ss';
% end
% F3=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,852,fase(i),8000,0,3);
%      F3=F3+ss';
% end
% F4=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,941,fase(i),8000,0,3);
%      F4=F4+ss';
% end
% C1=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,1209,fase(i),8000,0,3);
%      C1=C1+ss';
% end
% C2=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,1336,fase(i),8000,0,3);
%      C2=C2+ss';
% end
% C3=zeros(24000,1);
% for i=1:length(fase)
%     [t,ss]=senoidal(1,1477,fase(i),8000,0,3);
%      C3=C3+ss';
% end

[t,F1]=senoidal(1,697,1,8000,0,3);
[t,F2]=senoidal(1,770,2,8000,0,3);
[t,F3]=senoidal(1,852,3,8000,0,3);
[t,F4]=senoidal(1,941,4,8000,0,3);
[t,C1]=senoidal(1,1209,1,8000,0,3);
[t,C2]=senoidal(1,1336,2,8000,0,3);
[t,C3]=senoidal(1,1477,3,8000,0,3);


simi=zeros(12,1);
N1=F1+C1;
N2=F1+C2;
N3=F1+C3;
N4=F2+C1;
N5=F2+C2;
N6=F2+C3;
N7=F3+C1;
N8=F3+C2;
N9=F3+C3;
NA=F4+C1; %asterisco
N0=F4+C2; %cero
NN=F4+C3; %numeral

DIS=zeros(12,length(N1));
DIS(1,:)=N1;
DIS(2,:)=N2;
DIS(3,:)=N3;
DIS(4,:)=N4;
DIS(5,:)=N5;
DIS(6,:)=N6;
DIS(7,:)=N7;
DIS(8,:)=N8;
DIS(9,:)=N9;
DIS(10,:)=NA;
DIS(11,:)=N0;
DIS(12,:)=NN;

for i=1:12
    simi(i)= interno(y1,DIS(i,1:largo1));
end
%primer numero
find(max(simi)==simi)

for i=1:12
    simi(i)= interno(y2,DIS(i,1:largo2));
end
%segundo
find(max(simi)==simi)

for i=1:12
    simi(i)= interno(y3,DIS(i,1:largo3));
end
% tercero
find(max(simi)==simi)

for i=1:12
    simi(i)= interno(y4,DIS(i,1:largo4));
end
% cuarto
find(max(simi)==simi)

for i=1:12
    simi(i)= interno(y4,DIS(i,1:largo4));
end
% quinto
find(max(simi)==simi)

for i=1:12
    simi(i)= interno(y5,DIS(i,1:largo5));
end
% sexto
find(max(simi)==simi)

for i=1:12
    simi(i)= interno(y6,DIS(i,1:largo6));
end
% septimo
find(max(simi)==simi)
