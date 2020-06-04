Off statistics;

Dimension 3;
Vectors u,v,w;
Indices i,j,k,l,m,n;
Local [uxv] = e_(i,j,k) * u(i) * v(j);
Local [uxv.w] = e_(i,j,k) * u(i) * v(j) * w(k);
Local [ux(vxw)] = e_(i,j,k) * u(i) * (e_(m,n,j) * v(m) * w(n));
contract;
Print;
