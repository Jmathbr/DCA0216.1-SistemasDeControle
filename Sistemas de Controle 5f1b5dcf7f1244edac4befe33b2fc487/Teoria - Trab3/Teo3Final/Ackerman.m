p = -0.06559309614842768;

p1= p; 
p2= p;
p3= -0.7;

Aa = [0 0 1; 0 p 0; 0 -p p];
Ba = [ 0 ; 0.2964 ; 0 ];

U  = [Ba Aa*Ba Aa^2*Ba];

ds = conv(conv([1 -p1],[1 -p2]), [1 -p3]);

QCA = ds(1)*Aa^3 + ds(2)*Aa^2 + ds(3)*Aa + ds(4)*eye(size(Aa));

K  = - real([0 0 1]*(inv(U))*QCA);

K1 = K(1)
K2 = [K(2) K(3)]


