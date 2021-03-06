a1=0.17813919765;
a2=a1;
A1=15.5179;
A2=A1;
L20=15;
L10=((a2)^2/(a1)^2)*L20;
Km=11;
g=981;

%%polos do observador: a parte real deve ser 2x a constante de tempo  
p1=-1%-0.3+i*0.3; 
p2=-2%-0.3-i*0.3;
%delta_s=conv([1,-p1],[1,-p2]);
%os coeficientes de delta_s multiplicam a  matriz A


A=[(-a1/A1)*sqrt(g/(2*L10)) 0;(a1/A2)*sqrt(g/(2*L10)) (-a2/A2)*sqrt(g/(2*L20)) ];
B=[Km/A1; 0];
C=[0 1];
D=0;
V=[C; C*A];
%V_inv=inv(V);
%L=(A^2+delta_s(2)*A+delta_s(3)*eye(size(A)))*V_inv*[0 1]';

%projeto do observador de estados
delta_s = conv([1 -p1],[1 -p2]);
qlA = A^2 + delta_s(2)*A + delta_s(3)*eye(size(A));
%V = obsv(A,C);
L = real(qlA*inv(V)*[0;1])
