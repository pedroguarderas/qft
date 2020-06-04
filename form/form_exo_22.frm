#define two "2"
#define three "3"
#define four "4"
#define quatro "4"
Symbols x2,...,x5;
Local F'two' =
#if {'two'%2} == 0
  1
#else
  -1
#endif
;

Local F'three' =
#if {'three'%2} == 0
  1
#else
  -1
#endif
;

Local F'four' =
#switch {'four'/2}
#case {‘quatro’/2}
  + x2
#case 'three'
  + x3
#break
#case 2
  + x4
#default
  + x5
#endswitch
;
Print;
.end
