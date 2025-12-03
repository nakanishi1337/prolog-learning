% 州の色分け問題を解くプログラム

% 色が異なることを定義
different(red, green). different(red, blue). 
different(green, red). different(green, blue). 
different(blue, red). different(blue, green). 

% 州名を変数として受け取り、その変数に色を割り当てることで、色分け
coloring(Alabama, Mississippi, Georgia, Tennessee, Florida) :-
  different(Mississippi, Tennessee), 
  different(Mississippi, Alabama), 
  different(Alabama, Tennessee), 
  different(Alabama, Mississippi), 
  different(Alabama, Georgia), 
  different(Alabama, Florida), 
  different(Georgia, Florida), 
  different(Georgia, Tennessee). 
  