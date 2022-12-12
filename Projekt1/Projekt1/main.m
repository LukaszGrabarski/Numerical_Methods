% skrypt porównuję kwadraturę Simpsona z funckją wbudowaną oraz na jej
% podstawie tworzy wizualizację 3d

%obliczamy całkę z funckji f za pomocą kwadratury Simpsona oraz wbudowanej
%metody
simpson =  ZKSimpsona()

dokladny = integral2(@fBiegunowa,0,1,0,2*pi);
blad = simpson - dokladny;

%generujemy saitkę do wykresu
%x = [-1: 0.1: 1];
phi = [-pi: 0.01*pi: pi];
r = [0: 0.01: 1];

[R, PHI] = meshgrid(r, phi);

X = R.*cos(PHI);
Y = R.*sin(PHI);
Z = f(X,Y);

x2 = [-1: 1: 1];
[X2, Y2] = meshgrid(x2);

%tworzymy wykres
figure
mesh(X,Y,Z);
hold on;
mesh(X2,Y2,0*X2,'edgecolor', 'k');
title('f(x,y) = ((x + y)^2)/(x^2 + y^2 + 1)')
xlabel('x');
ylabel('y');
zlabel('f(x,y)')
annotation('textbox', [0.65, 0.80, 0.1, 0.1], 'String', "Dokładna całka =  " + dokladny)
annotation('textbox', [0.65, 0.70, 0.1, 0.1], 'String', "Przybliżona całka = " + simpson)
grid on

