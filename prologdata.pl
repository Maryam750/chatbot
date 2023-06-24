male(waheed).
male(rayyan).
male(mustafa).
female(shamaila).
female(amna).
female(fozia).
female(fatima).
female(summaiyah).
female(tasneem).
parent(waheed,rayyan).
parent(waheed,maryam).
parent(waheed,qasim).
parent(waheed,fatima).
parent(waheed,summaiyah).
parent(shamaila,rayyan).
parent(shamaila,maryam).
parent(shamaila,qasim).
parent(shamaila,fatima).
parent(shamaila,summaiyah).
parent(waheed,amna).
parent(tasneem,amna).
father(X, Y) :-parent(X, Y),male(X).
mother(X, Y) :-parent(X, Y),female(X).
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :-female(X),sibling(X, Y).
sibling(X, Y) :-parent(Z, X),parent(Z, Y).
grandmother(X, Y) :-female(X),parent(X, Z), parent(Z, Y).
grandfather(X, Y) :-male(X),parent(X, Z),parent(Z, Y).
husband(X, Y) :- male(X), parent(X, Z), parent(Y, Z).
wife(X, Y) :- female(X), parent(X, Z), parent(Y, Z).
mother_sister(X, Y) :-mother(M, Y),sister(X, M).
father_brother(X, Y) :-father(F, Y),brother(X, F).
mother_brother(X, Y) :- mother(M, Y), brother(X, M).
father_sister(X, Y) :- father(F, Y),sister(X, F).

