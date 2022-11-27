clear

px = [-2 4];
py = [-2 -3];
plot(px, py, 'b*');

axis([ -5 6 -6 4 ]); axis equal;
hold on;

%hf megoldani
t0 = -1; t1 = 1; t2 = 0; t3 = 0.5;
vx = [3 3]; vy = [2 -3];

%quiver( px(1), py(1), vx(1), vy(1))
%quiver( px(2), py(2), vx(2), vy(2))

syms a3 a2 a1 a0 t
cx(t) = a3 * t^3 + a2 * t^2 + a1 * t + a0;
cxd(t) = diff(cx, t)

e = [ cx(t0) == px(1), cx(t1) == px(2), cxd(t0) == vx(1), cxd(t1) == vx(2) ];
m = solve( e, [a3 a2 a1 a0] );
x(t) = subs( cx, [a3 a2 a1 a0], [m.a3, m.a2, m.a1, m.a0] );

syms b3 b2 b1 b0 t
cy(t) = b3 * t^3 + b2 * t^2 + b1 * t + b0;
cyd(t) = diff(cy, t)

e = [ cy(t0) == py(1), cy(t1) == py(2), cyd(t0) == vy(1), cyd(t1) == vy(2) ];
m = solve( e, [b3 b2 b1 b0] );
y(t) = subs( cy, [b3 b2 b1 b0], [m.b3, m.b2, m.b1, m.b0] );

fplot(x, y, [t0, t1])

quiver( px(1), py(1), vx(t2), vy(t2))
quiver( px(2), py(2), vx(t3), vy(t3))
