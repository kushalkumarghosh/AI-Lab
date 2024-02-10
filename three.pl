edge(0,1).
edge(0,3).
edge(0,2).
edge(1,3).
edge(2,4).
edge(3,5).
edge(3,6).
edge(4,5).
edge(4,7).
edge(5,2).
edge(6,5).
edge(7,5).
edge(7,8).

connected(P,Q):-
	edge(P,Q);
	edge(Q,P).

    path(A,B,Path):-
    traverse(A,B,[A],Q),
    reverse(Q,Path).

 traverse(A,B,P,[B|P]):-
    connected(A,B).


traverse(A,B,Visited,Path):-
    connected(A,C),
    C\==B,
    \+member(C,Visited),
    traverse(C,B,[C|Visited],Path).




male()

