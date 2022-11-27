clear

px = [-2 4 6 10];
py = [-2 0 -2 2];

tk = [-1 0 2 3];

plot(px,py, 'r*')

axis equal
axis([-3 15 -5 5]);
hold on

syms a3 a2 a1 a0 t

c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c,t);

e = [c(tk(1)) == px(1), c(tk(2)) == px(2), c(tk(3)) == px(3), c(tk(4)) == px(4)];
m = solve(e, [a3 a2 a1 a0]);
x(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);
xd(t) = diff(x, t);

e = [c(tk(1)) == py(1), c(tk(2)) == py(2), c(tk(3)) == py(3), c(tk(4)) == py(4)];
m = solve(e, [a3 a2 a1 a0]);
y(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);
yd(t) = diff(y,t);

fplot(x,y,[tk(1) tk(4)])

%%%%%%%%%%% 11. feladat %%%%%%%%%%%
% kezdo px(4) py(4)
% veg (14 -4) erintoje (3 0)
% t -1 1

px2 = [10 14];
py2 =  [2 -4];

plot(px2,py2, 'r*')

tk2 = [-1 1];
vx = 3;
vy = 0;

e = [c(tk2(1)) == px2(1), c(tk2(2)) == px2(2), cd(tk2(1)) == xd(tk(4)), cd(tk2(2)) == vx];
m = solve(e, [a3 a2 a1 a0]);
x(t) = subs(c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0]);

e = [c(tk2(1)) == py2(1), c(tk2(2)) == py2(2), cd(tk2(1)) == yd(tk(4)), cd(tk2(2)) == vy];
m = solve(e, [a3 a2 a1 a0]);
y(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

fplot(x,y, [tk2(1) tk2(2)])
