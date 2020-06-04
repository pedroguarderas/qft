* Graph with prescribed degrees by vertices
AutoDeclare Vector v;
On Statistics;
Local F = dd_(v1,v1,v1,v2,v2,v2,v3,v3,v3,v4);
Print +s F;
.sort

* only loop-free graphs
Off Statistics;
id v1.v1 = 0;
id v2.v2 = 0;
id v3.v3 = 0;
Print +s F;
.sort

* no multiple edges
id v1.v2^2 = 0;
id v1.v3^2 = 0;
id v2.v3^2 = 0;
Print +s F;
.end
