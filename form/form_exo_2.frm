*
* Declarations
*
Functions f,g;
CFunctions F,G;
Symbol x;
*
* Specifications, e.g. no runtime statistics
*
Off statistics;
*
* Definitions
*
* local expression with only noncommuting functions
*
Local F1 = f(x)*g(x) + g(x)*f(x);
*
* Output
*
Print;
*
* end of module
*
.sort
*
* local expression with only commuting functions
*
Local F2 = F(x)*G(x) + G(x)*F(x);
Print F2;
*
* terminate the program
*
.end
