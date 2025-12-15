count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

sum(0, []).
sum(Total, [Head|Tail]) :- sum(Sum, Tail), Total is Head + Sum.

average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum / Count.

% TailCountがスタックに積まれて、底に到達してから戻りながら確定していくイメージ
% ?- count(What, [1,2,3,4]).

% sumも同様
% ? - sum(What, [1,2,3,4]).

% ?- average(What, [1,2,3,4]).