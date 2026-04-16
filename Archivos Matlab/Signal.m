close all;
clear all;
clc;
T = 4;
Wo = pi/2;
syms t k;  %Vaiables Syms
% Rangos de la función
f1 = 1;     % De 0-1
f2 =-1;     % De 1-3
f3 = 1;     % De 3-4
Ao = (1/T) * (int(f1, t, 0, 1) + int(f2, t, 1, 3) + int(f3, t, 3, 4)); 
FactorAk = cos(k * Wo * t);
FactorBk = sin(k * Wo * t);
Ak = (2/T) * (int(f1 * FactorAk, t, 0, 1) + int(f2 * FactorAk, t, 1, 3) + int(f3 * FactorAk, t, 3, 4));
Bk = (2/T) * (int(f1 * FactorBk, t, 0, 1) + int(f2 * FactorBk, t, 1, 3) + int(f3 * FactorBk, t, 3, 4));
Ak=simplify(Ak);
Bk=simplify(Bk);


x = -8:6/1000:8;
N = input('Numero de armonicos= ');
xN = Ao*ones(1, length(x)); 
for i = 1:1:N
    FAk = cos(i * Wo * x);
    FBk = sin(i * Wo * x);
    xN = xN + subs(Ak*FAk + Bk*FBk,k,i);
    plot(x, xN), axis([-6, 6, -1.5, 1.5]);
    F(i) = getframe;
end
