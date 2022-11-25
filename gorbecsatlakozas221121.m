clear

px = [0 6 10];
py = [1 2 0];
plot(px, py, 'b*');

axis([ -5 6 -6 4 ]); axis equal;
hold on;

t0 = -1; t1 = 0; t2 = 1; t3 = 2;
vx = [3 2 2]; vy = [4 -3 4];

syms a3 a2 a1 a0 t

c(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cd(t) = diff(c, t)

e = [ c(t0) == px(1), c(t1) == px(2), cd(t0) == vx(1), cd(t1) == vx(2) ];
m = solve( e, [a3 a2 a1 a0] );
x(t) = subs( c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );

e = [ c(t0) == py(1), c(t1) == py(2), cd(t0) == vy(1), cd(t1) == vy(2) ];
m = solve( e, [a3 a2 a1 a0] );
y(t) = subs( c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );


fplot(x, y, [t0,t1])


e = [ c(t2) == px(2), c(t3) == px(3), cd(t2) == vx(2), cd(t3) == vx(3) ];
m = solve( e, [a3 a2 a1 a0] );
x(t) = subs( c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );

e = [ c(t2) == py(2), c(t3) == py(3), cd(t2) == vy(2), cd(t3) == vy(3) ];
m = solve( e, [a3 a2 a1 a0] );
y(t) = subs( c, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );

fplot(x,y, [t2,t3])
