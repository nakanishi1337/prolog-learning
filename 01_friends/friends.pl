likes(wallace, cheese).
likes(grommit, cheese).
likes(wendolene, sheep).

friend(X, Y) :-
    X \= Y,
    likes(X, Z),
    likes(Y, Z).

query(Q) :-
    (   call(Q)
    ->  write(Q), write(': yes'), nl
    ;   write(Q), write(': no'), nl
    ).

main :-
    query(friend(wallace, wallace)),
    query(friend(wallace, grommit)),
    query(friend(wallace, wendolene)).
