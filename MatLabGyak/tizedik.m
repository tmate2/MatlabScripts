clear

px = [-2 6];
py = [-2 -2];
plot(px,py,'b*')

axis equal
axis([-5 15 -6 2])
hold on

vx = [6 4];
vy = [-4 4];

tk = [0 1];

syms a3 a2 a1 a0 t

c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c, t);

e = [c(tk(1)) == px(1), c(tk(2)) == px(2), cd(tk(1)) == vx(1) cd(tk(2)) == vx(2)];
m = solve(e, [a3 a2 a1 a0]);
x(t) = subs(c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0]);

e = [c(tk(1)) == py(1), c(tk(2)) == py(2), cd(tk(1)) == vy(1), cd(tk(2)) == vy(2)];
m = solve(e, [a3 a2 a1 a0]);
y(t) = subs(c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0]);

fplot(x, y, [tk(1) tk(2)])

%10. feladat plusz pont felvetele es masik hermite iv
px2 = 14;
py2 = -4;

plot(px2, py2, 'r*')

tk2 = [-1 1];

vx2 = 3;
vy2 = 0;

e = [ c(tk2(1)) == px(2), c(tk2(2)) == px2, cd(tk2(1)) == vx(2), cd(tk2(2)) == vx2 ];
m = solve(e, [a3 a2 a1 a0]);
x(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

e = [c(tk2(1)) == py(2), c(tk2(2)) == py2, cd(tk2(1)) == vy(2), cd(tk2(2)) == vy2 ];
m = solve(e, [a3 a2 a1 a0]);
y(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

fplot(x,y,[tk2(1) tk2(2)])
