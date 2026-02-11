eight_queens(List) :- 
    length(List, 8),
    valid_board(List),

    rows(List, Rows), fd_all_different(Rows),
    cols(List, Cols), fd_all_different(Cols),
    diags1(List, Diags1), fd_all_different(Diags1),
    diags2(List, Diags2), fd_all_different(Diags2).

% 1-8に収まるかどうかの判定
valid_queen((Row, Col)) :-
    Range = [1,2,3,4,5,6,7,8],
    member(Row, Range), member(Col, Range).

% 盤面上のすべてのクイーンが1-8に収まるかどうかの判定
valid_board([]).
valid_board([H|T]) :-
    valid_queen(H), 
    valid_board(T).

% ?- rows([(1,5),(3,2),(8,7)], X).
% X = [1,3,8].
rows([], []).
rows([(Row, _)|QueenTail], [Row | RowsTail]) :-
    rows(QueenTail, RowsTail).

% ?- cols([(1,5),(3,2),(8,7)], X).
% X = [5,2,7].
cols([], []).
cols([(_, Col)|QueenTail], [Col | ColsTail]) :-
    cols(QueenTail, ColsTail).

% ?- diags1([(1,5),(3,2),(8,7)], X).
% X = [ -4, 1, 1].
% 同じ斜め上にいるクイーンは同じ値になる
diags1([], []).
diags1([(Row, Col)|QueenTail], [Diagonal | DiagsTail]) :-
    Diagonal is Row - Col,
    diags1(QueenTail, DiagsTail).

diags2([], []).
diags2([(Row, Col)|QueenTail], [Diagonal | DiagsTail]) :-
    Diagonal is Row + Col,
    diags2(QueenTail, DiagsTail).


% 例:
% 本来は、このようにすればいいが、時間がかかりすぎる。
% ?- eight_queens([(A, B), (C, D), (E, F), (G, H), (I, J), (K, L), (M, N), (O, P)]).
% すべて違う行にクイーンを置くことがわかっているので、行を固定して探索空間を減らす。
% ?- eight_queens([(1,A),(2,B),(3,C),(4,D),(5,E),(6,F),(7,G),(8,H)]).