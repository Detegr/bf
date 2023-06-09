bf:{i::i[&~0N=i:"<>+-.[],"?x]                      /input
 d::(-).(+\=)[;i]'5 6                              /depth
 ob::"";O:{ob::ob,`c$x[2][x@0];x}                  /output buffer/fn
 s::(0;0;30000#0)                            /state(data ptr,inst ptr,mem)
 fb::{1+*|&&\x}                                    /find bracket
 in:{x[2;*x]:*1:`;x}                               /read stdin
 b:{$[x[2;*x];@[x;1;-;fb[|x[1]#d]];x]}             /beginning of loop
 e:{$[x[2;*x];x;@[x;1;+;fb[x[1]_d]]]}              /end of loop
 dp:{@[x;0;y;1]};dv:{.[x;(2;*x);y;1]}              /modify data ptr/val
 q::(dp[;-];dp[;+];dv[;256!+];dv[;256!-];O;e;b;in) /primitives
 {s[1]<#x} {s::@[q[x@s@1]@s;1;+;1];x}/i;`0:ob}     /run
/ ngn-k
bf[""/0:`argv[2]]
