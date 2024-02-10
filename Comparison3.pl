go:-write("Enter three numbers"),nl,
read(A),read(B),read(C),nl,
com(A,B,C).
com(A,B,C):-
A>B,A>C,
write(A),
write(" is greater").
com(A,B,C):-
B>A,B>C,
write(B),
write(" is greater").
com(A,B,C):-
C>A,C>B,
write(C),
write(" is greater").
