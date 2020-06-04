Symbols hbar,m;
Functions x,p,H;
Local [H,x] = H*x - x*H;
id H = p^2/(2*m);
Print;
.sort

repeat;
  id x*p = p*x + hbar*i_;
endrepeat;
Print;
.end
