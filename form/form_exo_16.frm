AutoDeclare Vector v;
Local F = dd_(v1,v1,v1,v1,v1,
              v2,v2,v2,v2,v2,
              v3,v3,v3,v3,
              v4,v4,v4,
              v5,v5,v5,
              v6,v6);
* loop-free
id v?.v?=0;
 * no multiple edges
id v1?.v2?^2=0;
Format 65;
Print F;
.end
