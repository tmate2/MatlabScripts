clear

px = [10 20 40 50 20];
py = [20 40 40 20 10];

plot(px,py, '*--');

axis equal
axis([0 55 -45 45]);
hold on

n = 4;

syms t
cx(t) = 0*t;
cy(t) = 0*t;

for i=0:n
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end

fplot(cx,cy, [0 1])


%%%%% 17. %%%%%

px2 = [px(5) 20];
py2 = [py(5) -40];

plot(px2,py2, 'g*');

vx = [-60 60];
vy = [-20 0];

tk = [0 1];

syms a3 a2 a1 a0

c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c,t);

e = [c(tk(1)) == px2(1), c(tk(2)) == px2(2), cd(tk(1)) == vx(1), cd(tk(2)) == vx(2)];
m = solve(e, [a3 a2 a1 a0]);

x(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

e = [c(tk(1)) == py2(1), c(tk(2)) == py2(2), cd(tk(1)) == vy(1), cd(tk(2)) == vy(2)];
m = solve(e, [a3 a2 a1 a0]);

y(t) = subs(c, [a3 a2 a1 a0], [m.a3 m.a2 m.a1 m.a0]);

fplot(x, y, [tk(1) tk(2)])


