father(zeb, john_boy_sr).
father(john_boy_sr, john_boy_jr).

% 一つ目のルールに適合しなければ、二つ目のルールを試す
% このように再帰的に祖先を辿る
ancestor(X, Y) :- father(X, Y).
ancestor(X, Y) :- father(Z, Y), ancestor(X, Z).

% クエリ例:
% ?- ancestor(john_boy_sr, john_boy_jr).
% ?- ancestor(zeb, john_boy_jr).
% ?- ancestor(zeb, Who).