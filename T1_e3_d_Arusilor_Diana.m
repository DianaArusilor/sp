
Ts = 2e-3; % 2 ms timp de esantionare(rezolutie)
%analog pentru Ts=20e-3 pentru 20ms timp de esantionare
%analog pentru Ts=200e-3 pentru 200ms timp de esantionare
T = 0.25;
v = [-7,-5, -3, -1, 1, 3, 5, 7]; % 2 nivele a cate 0.25s fiecare => timp = 0.5s
l = length(v);
v = liniarizare(v,T,Ts);
t = linspace(0,l*0.25e-3,l*T/Ts);

plot(t,v),grid;
  
% functie care transforma o secventa binara ( ex:[ 0 0 1 ] ) intr-un vector
% de puncte in functie de perioada de bit T si perioada de esantionare Ts

function M = liniarizare(v,T,Ts) 
M = v';
M = repmat(M,1,T/Ts); 
M = M';
M = M(1:numel(M));
end