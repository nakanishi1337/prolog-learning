% リストの各要素を逆順に並べる
reverse_list([], []).
reverse_list(Reversed, [Head|Tail]) :-
    reverse_list(ReversedTail, Tail),
    append(ReversedTail, [Head], Reversed).

% ?- reverse_list([a, b, c, d], What).

% リスト内のもっとも小さな要素を見つける
min(Min, [Min]).
min(Min, [Head|Tail]) :-
    min(TailMin, Tail),
    (Head < TailMin -> Min = Head ; Min = TailMin).
% ?- min(What, [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]).

% リストをソートする
selection_sort([], []).
selection_sort([M|Sorted], L) :-
    min(M, L),
    select(M, L, Rest),
    selection_sort(Sorted, Rest).
% ?- selection_sort(What, [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]).