my_length([], 0).
my_length([_|T], N) :-
    my_length(T, N1),
    N is N1 + 1.

sum_list([], 0).
sum_list([H|T], Sum) :-
    sum_list(T, Sum1),
    Sum is H + Sum1.

max_list([X], X).
max_list([H|T], Max) :-
    max_list(T, MaxTail),
    ( H > MaxTail ->
        Max = H
    ;
        Max = MaxTail
    ).

map_square([], []).
map_square([H|T], [H2|T2]) :-
    H2 is H * H,
    map_square(T, T2).