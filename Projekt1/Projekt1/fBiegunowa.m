function res = fBiegunowa(r, fi)
% funkcja zmienia funkcję f ze współrzętdnych kartezjańskich
% na biegunowe, gdzie r to promień, a fi to kąt

res = r.*f(r.*cos(fi), r.*sin(fi));


