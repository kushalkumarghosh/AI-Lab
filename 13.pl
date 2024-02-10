go:-
  write
  writeln("Enter start number"),
  read(Start),nl,
  writeln("Enter last number"),
  read(End),nl,
  loop(Start,End).

loop(Start,End):-
   between(Start,End,Num),
   Even is mod(Num,2),
   Even = 0,
   writeln(Num),
   Num >= End,!.
