a1=0.17813919765;
a2=a1;
A1=15.5179;
A2=A1;
L20=15;
L10=((a2)^2/(a1)^2)*L20;
Km=11;
g=981;

%dois conjulgados e um real
%%3 reais
%%polos do observador: a parte real deve ser 2x a constante de tempo  
p1=-(1.5*(10))+i*0.3%+i*0.2 %; 
p2=-(1.5*(10))-i*0.3%-i*0.2 %-1.5-i*0.3;
p3=-0.05 %-0.05
%delta_s=conv([1,-p1],[1,-p2]);
%os coeficientes de delta_s multiplicam a  matriz A


A=[(-a1/A1)*sqrt(g/(2*L10)) 0;(a1/A2)*sqrt(g/(2*L10)) (-a2/A2)*sqrt(g/(2*L20)) ];
B=[Km/A1; 0];
C=[0 1];
Z=[0;0];
Aa=[0 C; Z A];
Ba=[0; B];
U=[Ba Aa*Ba Aa^2*Ba];
U_inv=inv(U);
%L=(A^2+delta_s(2)*A+delta_s(3)*eye(size(A)))*V_inv*[0 1]';

%projeto do seguidor de referencia
delta_s = conv(conv([1 -p1],[1 -p2]), [1 -p3]);

qC = delta_s(1)*Aa^3 + delta_s(2)*Aa^2 + delta_s(3)*Aa + delta_s(4)*eye(size(Aa));
%V = obsv(A,C);
K = - real([0 0 1]*U_inv*qC);
K1=K(1);
K2=[K(2) K(3)];
