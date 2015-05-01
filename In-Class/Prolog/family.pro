parent(fred, sophusw). parent(fred, lawrence).
parent(fred, kenny). parent(fred, esther).
parent(inger,sophusw). parent(johnhs, fred).
parent(mads,johnhs). parent(lars, johan).
parent(johan,sophus). parent(lars,mads).
parent(sophusw,gary). parent(sophusw,john).
parent(sophusw,bruce). parent(gary, kent).
parent(gary, stephen). parent(gary,anne).
parent(john,michael). parent(john,michelle).
parent(addie,gary). parent(gerry, kent).
male(gary). male(fred).
male(sophus). male(lawrence).
male(kenny). male(esther).
male(johnhs). male(mads).
male(lars). male(john).
male(bruce). male(johan).
male(sophusw). male(kent).
male(stephen). female(inger).
female(anne). female(michelle).
female(gerry). female(addie).
father(X,Y):-parent(X,Y),male(X).
mother(X,Y):-parent(X,Y), female(X).

append([],L2,L2).
append([H|T],L2,[H|L3]) :- append(T,L2,L3).

insert(Val,nil,btnode(Val,nil,nil)).
insert(Val,btnode(RootVal,L,R)),btnode(RootVal,L,NR) :- Val > RootVal, insert(Val,R,NR).
insert(Val,btnode(RootVal,L,R)),btnode(RootVal,NL,R) :- Val > RootVal, insert(Val,L,NL).

processInserts([],Tree,Tree).
processInserts([H|],Tree,ResultTree) :- insert(H,Tree,NewTree), processInserts(T,NewTree,ResultTree).
processInserts(T,NewTree,ResultTree).