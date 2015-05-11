preprocess([], []). 
preprocess([H|T], [num(H) |NT]) :- number(H), preprocess(T, NT). 
preprocess([H|T], [H|NT]) :- not(number(H)), preprocess(T,NT).

expr(add(E1,E2)) --> [+], expr(E1), expr(E2). 
expr(sub(E1,E2)) --> [-], expr(E1), expr(E2). 
expr(mul(E1,E2)) --> [*], expr(E1), expr(E2). 
expr(div(E1,E2)) --> [/], expr(E1), expr(E2). 
expr(negate(E)) --> ['~'], expr(E). 
expr(store(E)) --> ['s'], expr(E). 
expr(recall) --> ['r']. 
expr(number(E)) --> [num(E)].

interpret(add(E1, E2), MIn, MOut, Val) :- interpret(E1, MIn, Out, V1), interpret(E2, Out, MOut, V2), Val is V1 + V2. 
interpret(sub(E1, E2), MIn, MOut, Val) :- interpret(E1, MIn, Out, V1), interpret(E2, Out, MOut, V2), Val is V1 - V2. 
interpret(mul(E1, E2), MIn, MOut, Val) :- interpret(E1, MIn, Out, V1), interpret(E2, Out, MOut, V2), Val is V1 * V2.
interpret(div(E1, E2), MIn, MOut, Val) :- interpret(E1, MIn, Out, V1), interpret(E2, Out, MOut, V2), Val is V1 / V2.
interpret(negate(E), MIn, MOut, Val) :- interpret(E, MIn, MOut, NegVal), Val is (-1)*NegVal. 
interpret(store(E), MIn, Val, Val) :- interpret(E, MIn, _, Val). 
interpret(recall, Val, Val, Val). 
interpret(number(E), MIn, MIn, E).

calc :- readln(L,_,_,_,lowercase), preprocess(L,PreL), print(PreL), nl, expr(Tree,PreL,[]), print(Tree), nl, interpret(Tree,0,_,Val), print(Val), nl.


