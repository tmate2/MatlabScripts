clear

%t-t nem kell felvenni mivel az fixen [0 1]
%kontroll pontok
px = [1 5 8 6]; py = [1 6 5 -1];
plot(px, py, '*--')
axis([-3 12 -5 10]); axis equal
hold on
%pontok száma -1
n=3;

syms t
%be kell szorozni a jobb oldalt t-vel, hogy a matlab ne hisztizzen
cx(t) = 0*t; cy(t) = 0*t;

% 0 és n is benne van a ciklusban
for i=0:n
    % nchoosek(n,k) => n alatt a k
    %benstein pol
    b(t) = nchoosek(n, i) * t^i * (1-t)^(n-i);
    % px(i+1) mivel csúszik az indexelés
    cx(t) = cx(t) + px(i+1) * b(t);
    cy(t) = cy(t) + py(i+1) * b(t);
end

fplot(cx, cy, [0 1])
