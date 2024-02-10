go:-
        write("Name: Kushal Ghosh"),nl,
        write("ID: 11190320398"),nl,
        write("Enter a number limit:"),nl,
        read(N),nl,
        loop(1,N).
loop(1, N):-
        between(1, N, X),
        writeln(X),
        X>=N,
        !.
        loop(1,N).


