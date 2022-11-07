clear

%pontok egyszerűbb összeírása
%(-2 -2) (0 3) (5 0) (3 -3)
px=[-2 0 5 4];
py=[-2 3 0 -3];

plot(px,py, 'b*')
axis([-4 8 -4 7]);
axis equal;
hold on

%t-k felvétele listával
tk = [-1 1 2 4];

%x tengely
syms a3 a2 a1 a0 t

%szimbólum előtt legjobb ha kitesszük a szóközt
eq = [ a3 * tk(1)^3 + a2 * tk(1)^2 + a1 * tk(1) + a0 == px(1), ...
    a3 * tk(2)^3 + a2 * tk(2)^2 + a1 * tk(2) + a0 == px(2), ...
    a3 * tk(3)^3 + a2 * tk(3)^2 + a1 * tk(3) + a0 == px(3), ...
    a3 * tk(4)^3 + a2 * tk(4)^2 + a1 * tk(4) + a0 == px(4)]

% solve(megoldandó egyenlet, [ismeretlenek listája])
m = solve(eq, [a3 a2 a1 a0])

%struct-ot hoz létre, elemeire hivatkozni  m.a3
x(t) = m.a3 * t^3 + m.a2 * t^2 + m.a1 * t + m.a0


%y tengely
syms b3 b2 b1 b0

eq = [ b3 * tk(1)^3 + b2 * tk(1)^2 + b1 * tk(1) + b0 == py(1), ...
    b3 * tk(2)^3 + b2 * tk(2)^2 + b1 * tk(2) + b0 == py(2), ...
    b3 * tk(3)^3 + b2 * tk(3)^2 + b1 * tk(3) + b0 == py(3), ...
    b3 * tk(4)^3 + b2 * tk(4)^2 + b1 * tk(4) + b0 == py(4)]

m = solve(eq, [b3 b2 b1 b0])
y(t) = m.b3 * t^3 + m.b2 * t^2 + m.b1 * t + m.b0

%kirajzolás
fplot(x, y, [tk(1), tk(4)])

