clear

px = [20 0 0 20 20];
py = [0 10 30 30 20];

n = 4;

plot(px,py, 'r*--')

axis equal
axis([0 40 0 40])
hold on

syms t

cx(t) = 0*t;
cy(t) = 0*t;

for i=0:n
    b(t) = nchoosek(n,i) * t^i * (1-t)^(n-i); 
    cx(t) = cx(t) + px(i+1)*b(t);
    cy(t) = cy(t) + py(i+1)*b(t);
end

fplot(cx,cy,[0 1], 'r', 'LineWidth', 5)

%%%%%%
px2 = [20 40 40 20 20];
py2 = [0 10 30 30 20];

plot(px2, py2, 'g*--')

cx2(t) = 0*t;
cy2(t) = 0*t;
for i=0:n
    b(t) = nchoosek(n,i) * t^i * (1-t)^(n-i);
    cx2(t) = cx2(t) + px2(i+1)*b(t);
    cy2(t) = cy2(t) + py2(i+1)*b(t);
end

fplot(cx2,cy2,[0 1], 'r', 'LineWidth', 5)