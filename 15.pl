go:-
		edge(1,2).
		edge(1,3).
		edge(1,4).
		edge(2,3).
		edge(2,5).
		edge(3,4).
		edge(3,5).
		edge(4,5).

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