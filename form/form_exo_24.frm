Functions h,e,f;
FunPowers allfunpowers;
Local F1 = f^3*e^2*h;
Local F2 = h * h*e^2*f^3 - h*e^2*f^3 * h;
repeat;
  id e*h = h*e - 2*e;
  id f*h = h*f + 2*f;
  id f*e = e*f - h;
endrepeat;
Print;
.end
