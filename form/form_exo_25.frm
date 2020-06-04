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

*
* (ii) Christoffel symbols of the 1st kind
*
Local C1 = 1/2*( del(k)*g(j,l) + del(j)*g(l,k) - del(l)*g(j,k));
*
* definition of metric tensor
*
id g(i?,j?) = d_(i,j) + phi(i)*phi(j)/[1-phi(n)^2];
*
* rules for differentiation
*
repeat;
id del(i?)*phi(j?) = d_(i,j)+ phi(j)*del(i);
endrepeat;
id del(i?)/[1-phi(n)^2] = 2*phi(i)/[1-phi(n)^2]^2;
id del(i?) = 0;
Print +s C1;
.sort;

*
* normalization:
* bring over one denominator = (1-phi(n)^2)^2
* first we simplify the numerator
*
id 1/[1-phi(n)^2]^2 = 1;
id 1/[1-phi(n)^2] = 1-phi(n)^2;
*
* move to commuting functions
*
id phi(i?) = PHI(i);
*
* further simplification of numerator
*
id PHI(i?)^2 = 1 - [1-PHI(n)^2];
*
* The requested formula
*
multiply 1/[1-PHI(n)^2]^2;
id PHI?^(-2) * PHI? = 1/PHI;
Print +s C1;
.sort

*
* (iii) Christoffel symbols of 2nd kind
*
Local C2 = ginv(i,l) * C1;
id ginv(i?,j?) = d_(i,j) - PHI(i)*PHI(j);
Print C2;
.sort

*
* normalization:
* bring over one denominator = (1-PHI(n)^2)^2
* first we simplify the numerator
*
id 1/[1-PHI(n)^2]^2 = 1;
id 1/[1-PHI(n)^2] = 1-PHI(n)^2;
*
* further simplification of numerator
*
id PHI(i?)^2 = 1 - [1-PHI(n)^2];
Print +s C2;
.sort

*
* bringing back the denominator
*
id [1-PHI(n)^2]*[1-PHI(n)^2] = 1;
id [1-PHI(n)^2] = 1/[1-PHI(n)^2];
AntiBracket PHI;
Print +s C2;
.end
