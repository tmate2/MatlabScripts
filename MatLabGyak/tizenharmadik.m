clear

px = [10 20 40 50 55];
py = [20 40 40 20 10];

n = 4;

tk = [0 1 2 3 4];

tv = 0.5;

plot(px,py, 'b*')

axis equal
axis([5 55 5 55])
hold on

syms a3 a2 a1 a0 t

c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c,t);

e = [c(tk(1)) == px(1), c(tk(2)) == px(2), c(tk(3)) == px(3), c(tk(4)) == px(4), c(tk(5)) == px(5)];
m = solve(e, [a3 a2 a1 a0]);
x(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

e = [c(tk(1)) == py(1), c(tk(2)) == py(2), c(tk(3)) == py(3), c(tk(4)) == py(4), c(tk(5)) == py(5)];
m = solve(e, [a3 a2 a1 a0]);
y(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

fplot(x,y, [tk(1) tk(5)])