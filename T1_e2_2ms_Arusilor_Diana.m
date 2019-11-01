t=0:.002:15;
%se urmareste reprezentarea a 3 perioade ale semnalului cu perioada de 5s 
%cu rezolutie temporara de 200ms
x=1.5*sawtooth(2*pi*0.2*t)-0.5;
%se noteaza x=sawtooth(2*pi*0.2*t)inclusa in intervalul -1:1
%se considera o transformare liniara de forma y=a*x+b pentru a ajunge la cele
%doua nivele de minim si maxim dorite(determinarea coeficietilor)
%cum perioada este 5 secunde, frecventa este de 0.2 Hz
%prin 2*pi*0.5*t se modifica perioada functiei sawtooth care e initial 2*pi
plot(t,x)
axis([0 15 -3 3])
%se limiteaza axele de coordonate pe orizontala pentru a se afisa cele 3
% perioade
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal triunghiular periodic')
