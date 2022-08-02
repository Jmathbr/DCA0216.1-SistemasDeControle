%% Parametros da planta
clear all
clc
L0 = [0;0];
a1 = 0.178;
a2 = a1+5e-5;
A1 = 15.518;
A2 = A1 + 3e-5;
Km = 4.6;
g = 981;
sampleTime = 0.2;
simulationTime = 1500;

%%Atividade 3

p = -0.06559309614842768;

p1= p*4; 
p2= p*4;
p3= p*12;

Aa = [0 0 1; 0 p 0; 0 -p p];
Ba = [ 0 ; 0.2964 ; 0 ];

U  = [Ba Aa*Ba Aa^2*Ba];

ds = conv(conv([1 -p1],[1 -p2]), [1 -p3]);

QCA = ds(1)*Aa^3 + ds(2)*Aa^2 + ds(3)*Aa + ds(4)*eye(size(Aa));

K  = - real([0 0 1]*(inv(U))*QCA);

K1 = K(1)
K2 = [K(2) K(3)]
