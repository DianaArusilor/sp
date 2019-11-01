Ts = 2e-3; % 2 ms timp de esantionare(rezolutie)
%analog pentru Ts=20e-3 pentru 20 ms timp de esantionare
%analog pentru Ts=200e-3 pentru 200 ms timp de esantionare
T = 0.25;
v = [-3,-1, 1, 3]; % 2 nivele a cate 0.25s fiecare => timp = 0.5s
l = length(v);
v = liniarizare(v,T,Ts);
t = linspace(0,l*0.25e-3,l*T/Ts);

plot(t,v),grid;