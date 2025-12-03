likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

friend(X, Y) :-
    X \= Y,
    likes(X, Z),
    likes(Y, Z).


% 質問例
% friend(wallace, wallace).
% friend(wallace, grommit).
% friend(wallace, wendolene).