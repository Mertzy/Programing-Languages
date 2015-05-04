preprocess([],[]).
preprocess([H|T],[num(H)|NT]) :- number(H), preprocess(T,NT).
preprocess([H|T],[H|NT]) :- not(number(H)), preprocess(T,NT).

calc :- readln(L,_,_,_,lowercase), preprocess(L,NL), print(NL).

expr(add(E1,E2)) --> [+], expr(E1), expr(E2).