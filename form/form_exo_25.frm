Functions g, ginv, del, phi, [1-phi(n)^2];
CFunctions PHI, [1-PHI(n)^2];
FunPowers allfunpowers;
Indices i,j,k,l,n;
*
* (i) metric tensor and its inverse
*
Local [g(ik)] = d_(i,k) + PHI(i)*PHI(k)/[1-PHI(n)^2];
Local [ginv(kj)] = d_(k,j) - PHI(k)*PHI(j);
Local I = [g(ik)] * [ginv(kj)];
id PHI(i?)^2 = 1 - [1-PHI(n)^2];
id 1/PHI? * PHI? = 1;
Print I;
.sort
