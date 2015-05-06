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


/* Exercise 1 */

sibling(X,Y) :- parent(Z,X),parent(Z,Y).

/* Exercise 2 */

brother(X,Y) :- parent(Z,X),male(X),parent(Z,Y).

/* Exercise 3 */

niece(X,Y) :- female(Y),parent(Z,Y),sibling(X,Z).

/* Exercise 4 */

cousin(Cousin1,Cousin2) :- parent(P1,Cousin1), parent(P2,Cousin2),sibling(P1,P2).

/* Exercise 5 */

ancestor(Ancestor,Descendent) :- parent(Ancestor,Descendent).
ancestor(Ancestor,Descendent) :- parent(Ancestor,Person),ancestor(Person,Descendent).

/* Exercise 6 */

lengthof([],0).
lengthof([X|List],Length) :- lengthof(List,Length1),Length=Length1 + 1.

odd(List) :- lengthof(List,Length),mod(Length,2)==0.


/* Exercise 7 */

palindrome(List) :- reverse(List,List).
reverse(L1,L2) :- rev(L1,[],L2).
rev([],L,L).
rev([X|L],L2,L3) :- rev(L,[X|L2],L3).

/* Exercise 9 */

factorial(0,1). 

factorial(N,F) :- N>0,N1 is N-1,factorial(N1,F1),F is N * F1.

/* Exercise 10 */

fib(0,1).
fib(1,1).
fib(F,N) :- N>1,N1 is N-1,N2 is N-2,fib(F1,N1),fib(F2,N2),F is F1+F2.

/* Exercise 11 */

fib(N, Val, Last) :- N > 2,N1 is N - 1,fib(N1, Last, Last1),Val is Last + Last1.

/* Exercise 12 */

/* Not a clue... */

/* Exercise 13 */

count(_, [], 0) :- !. 
count(X, [X|T], N) :- count(X, T, N2),N is N2 + 1.     
count(X, [Y|T], N) :- X \= Y,count(X, T, N).

/* Exercise 14 */

/* Not a clue... */

sublist( [], _ ).
sublist([X|XS],[X|XSS]) :- sublist(XS,XSS).
sublist([X|XS],[_|XSS]) :- sublist([X|XS],XSS).











