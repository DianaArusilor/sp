t=0:.002:8;
%se urmareste reprezentarea a 4 perioade cu rezolutie temporara de 2ms
x=0.75*square(2*pi*0.5*t,25)-0.25;
%se noteaza x=square(2*pi*0.5*t)= 1 sau -1
%se considera o transformare liniara de forma y=a*x+b pentru a ajunge la cele
%doua nivele de minim si maxim dorite(determinarea coeficietilor)
%cum perioada este 2 secunde, frecventa este de 0.5 Hz
%prin 2*pi*0.5*t se modifica perioada functiei square care e initial 2*pi
plot(t,x)
axis([0 8 -2 2])
%se limiteaza axele de coordonate pe orizontala pentru a se afisa cele 4
% perioade
xlabel('Timpul(secunde)')
ylabel('Amplitudinea semnalului(um)')
title('Semnal dreptunghiular cu factor de umplere 25%')
