bf:{i::i[&~0N=i:"<>+-.[]"?x]                    /input
 d::(-).(+\=)[;i]'5 6                           /depth
 ob::"";O:{ob::ob,x[2][x@0];x}                  /output buffer/fn
 s::(0;0;30000#0)                         /state(data ptr,inst ptr,mem)
 fb::{1+*|&&\x}                                 /find bracket
 b:{$[x[2;*x];@[x;1;-;fb[|x[1]#d]];x]}          /beginning of loop
 e:{$[x[2;*x];x;@[x;1;+;fb[x[1]_d]]]}           /end of loop
 dp:{@[x;0;y;1]};dv:{.[x;(2;*x);y;1]}           /modify data ptr/val
 q::(dp[;-];dp[;+];dv[;256/+];dv[;256/-];O;e;b) /primitives
 while[s[1]<#i;s::@[q[i@s@1]@s;1;+;1]];`<:_ob}  /run
/ ktye/k
bf@">++++++++[<+++++++++>-]<.>++++[<+++++++>-]<+.+++++++.. +++."
