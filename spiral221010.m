clear
syms t
x(t) = t*cos(t);
y(t) = t*sin(t);
fplot(x(t),y(t), [0 12*pi])
axis equal
t0 = 8*pi
hold on
%nagyobb pont megjelenítése
plot(x(t0),y(t0),'r*', ...
    'MarkerSize', 25)