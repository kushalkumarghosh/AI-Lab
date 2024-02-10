go:-

male(jibon).
male(rahim).
male(karim).
male(kamal).

female(ana).
female(else).
female(ratri).

parent(ana,rahim).
parent(jibon,rahim).
parent(jibon,else).
parent(rahim,ratri).
parent(rahim,karim).
parent(karim,kamal).

mother(X,Y):- parent(X,Y),female(X).

father(X,Y):-parent(X,Y),male(X).
sister(X,Y):-parent(Z,X),parent(Z,Y),female(X),X\==Y.
brother(X,Y):-parent(Z,X),parent(Z,Y),male(X),X\==Y.
