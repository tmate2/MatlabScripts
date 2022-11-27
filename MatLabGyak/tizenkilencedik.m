clear

px = [2 4 5];
py = [0 2 -2];

v0 = [2 2];
tk = [-1 0.2 1.3];

plot(px,py, 'r*');

axis equal
axis([-4 6 -3 5]);
hold on

syms a3 a2 a1 a0 t

c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c, t);

e = [c(tk(1)) == px(1), c(tk(2)) == px(2), c(tk(3)) == px(3), ...
    cd(tk(1)) == v0(1)];
m = solve(e, [a3 a2 a1 a0]);
x(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

e = [c(tk(1)) == py(1), c(tk(2)) == py(2), c(tk(3)) == py(3), ...
    cd(tk(1)) == v0(2)];
m = solve(e, [a3 a2 a1 a0]);
y(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

fplot(x,y,[tk(1) tk(3)])

quiver(px(1),py(1), v0(1),v0(2));

%%%%% 19. %%%%%

rx = [-3 -2 1 2];
ry = [4 1 2 0];

plot(rx,ry, 'g*--')

n = 3;

cx(t) = 0*t;
cy(t) = 0*t;

for i=0:n
   b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
   cx(t) = cx(t) + rx(i+1) * b(t);
   cy(t) = cy(t) + ry(i+1) * b(t);
end

fplot(cx,cy, [0 1]);
