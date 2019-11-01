% rezolutie 2 ms
t=0:0.002:6;
b=sinus(t);
b(b<0)=0;
plot(t,b), grid, title('rezolutie 2 ms');

% rezolutie 20 ms
t=0:0.02:6;
b=sinus(t);
b(b<0)=0
figure, plot(t,b), grid, title('rezolutie 20 ms');

% rezolutie 200 ms
t=0:0.2:6;
b=sinus(t);
b(b<0)=0;
figure, plot(t,b), grid, title('rezolutie 200 ms');

function s=sinus(t)
    s=sin((2/3)*pi*t)*0.8;
end
