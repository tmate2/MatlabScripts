clear

px = [-2 4 6 10];
py = [-2 0 -2 2];

plot(px,py, 'b*')
axis([-4 12 -3 3])
axis equal
hold on

tk = [-1 0 2 3];

syms a3 a2 a1 a0 t

eq = [ a3 * tk(1)^3 + a2 * tk(1)^2 + a1 * tk(1) + a0 == px(1), ...
    a3 * tk(2)^3 + a2 * tk(2)^2 + a1 * tk(2) + a0 == px(2), ...
    a3 * tk(3)^3 + a2 * tk(3)^2 + a1 * tk(3) + a0 == px(3), ...
    a3 * tk(4)^3 + a2 * tk(4)^2 + a1 * tk(4) + a0 == px(4)];

m = solve(eq, [a3 a2 a1 a0]);

x(t) = m.a3 * t^3 + m.a2 * t^2 + m.a1 * t + m.a0;

syms b3 b2 b1 b0

eq = [ b3 * tk(1)^3 + b2 * tk(1)^2 + b1 * tk(1) + b0 == py(1), ...
    b3 * tk(2)^3 + b2 * tk(2)^2 + b1 * tk(2) + b0 == py(2), ...
    b3 * tk(3)^3 + b2 * tk(3)^2 + b1 * tk(3) + b0 == py(3), ...
    b3 * tk(4)^3 + b2 * tk(4)^2 + b1 * tk(4) + b0 == py(4)];

m = solve(eq, [b3 b2 b1 b0]);

y(t) = m.b3 * t^3 + m.b2 * t^2 + m.b1 * t + m.b0;

fplot(x,y, [tk(1), tk(4)])

xd(tk) = diff(x, tk);
yd(tk) = diff(y, tk);

%%%%%%%%%%% rossz %%%%%%%%%%%%%
v = [ xd(tk(2)), yd(tk(2))];
quiver3(px(2), py(2), v(1),v(2))





