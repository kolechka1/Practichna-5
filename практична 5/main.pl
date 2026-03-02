:- consult(lists).
:- consult(graph).

run :-
    my_length([1,2,3,4,5], L),
    writeln(L),
    sum_list([1,2,3,4], S),
    writeln(S),
    max_list([5,2,9,-3,7], M),
    writeln(M),
    map_square([1,2,3], R),
    writeln(R),
    ( path(kyiv, uzhhorod) ->
        writeln(true)
    ;
        writeln(false)
    ),
    path_length(kyiv, uzhhorod, PL),
    writeln(PL).