male(john).
male(andrew).
male(barry).
male(louise).
male(charles).
male(daniel).

female(belen).
female(debbei).
female(belinda).
female(yvomne).
female(healther).

parents(john,barry).
parents(john,debbei).
parents(belen,barry).
parents(belen,debbei).
parents(belen,louise).
parents(andrew,louise).
parents(barry,belinda).
parents(barry,charles).
parents(debbei,daniel).
parents(debbei,yvomne).
parents(louise,healther).

father(X,Y):- parents(X,Y),male(X).
mother(X,Y):- parents(X,Y),female(X).
sibling(X,Y):- parents(Z,X),parents(Z,Y),X\=Y.
brother(X,Y):- sibling(X,Y),male(X).
sister(X,Y):- sibling(X,Y),female(X).
grandfather(X,Z):- parents(X,Y),parents(Y,Z),male(X).
grandmother(X,Z):- parents(X,Y),parents(Y,Z),female(X).
cousin(X,Y):- parents(P,X),parents(Q,Y),sibling(P,Q).
daughter(X,Y):- parents(Y,X),female(X).
son(X,Y):- parents(Y,X),male(X).




