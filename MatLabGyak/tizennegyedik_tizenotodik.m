clear

px = [10 20 40 50 20];
py = [20 40 40 20 10];

plot(px,py, '*--');

axis equal
axis([5 55 5 45]);
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

%15. feladat
px(1) == cx(0)
py(1) == cy(0)
%ha az így kapott ertekek megadjak a kezdőpont koordinatait