%Daniel Castillo López
%A01737357
%Limpieza de pantalla
clear all
close all
clc

%Declaración de variables simbólicas
syms x y z

%Declaración de puntos
P= [-5, -4, 1];

%Declaración de la función vectorial
F= [sin(5*x^3 + 3*y - 4*y*x*z^2); 
    -10*x^5 - 4*y*x*z + 15*x*z^4; 
    cos(-x*y*z^5 - 6*x*y^5*z - 7*y*x*z^2)];

disp('F(x, y, z):');
pretty(F);

% Derivadas parciales de los valores x, y ,z
Jv11 = diff(F(1), x);
Jv12 = diff(F(1), y);
Jv13 = diff(F(1), z);

Jv21 = diff(F(2), x);
Jv22 = diff(F(2), y);
Jv23 = diff(F(2), z);

Jv31 = diff(F(3), x);
Jv32 = diff(F(3), y);
Jv33 = diff(F(3), z);

% Construimos la matriz Jacobiana manualmente
Jv = [Jv11, Jv12, Jv13;
     Jv21, Jv22, Jv23;
     Jv31, Jv32, Jv33];

disp('Matriz Jacobiana:');
pretty(Jv);

% Sustitucion de valores(-5, -4, 1) en la matriz
Jv_ev = subs(Jv, [x, y, z], P);

disp('Matriz  sustituida en valores de (-5, -4, 1):');
pretty(Jv_ev);
Jv_num= double(Jv_ev); % Convierte en una expreción numerica 

disp('Matriz Jacobiana evaluada numéricamente:');
disp(Jv_num);
