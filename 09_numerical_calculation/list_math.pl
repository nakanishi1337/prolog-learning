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


fibonacci(0, 0).
fibonacci(1, 1).
fibonacci(Result, N) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(Result1, N1),
    fibonacci(Result2, N2), 
    Result is Result1 + Result2.

% ?- fibonacci(What, 20).

factorial(1, 1).
factorial(Result, N) :-
    N > 0,
    N1 is N - 1,
    factorial(Result1, N1),
    Result is N * Result1.

% ?- factorial(What, 5).