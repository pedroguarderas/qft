#define DIM "6";
Symbols i;
Functions e;
Local expr = sum_(i, 1, 'DIM', e(i)) ^ 3;
repeat;
#do i = 1, 'DIM'
  #do j = 'i'+1, 'DIM'
    id e('j') * e('i') = -e('i') * e('j');
  #enddo
  id e('i') * e('i') = 1;
#enddo
endrepeat;
Print;
.end
