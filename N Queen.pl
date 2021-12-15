/*
we just have to query like
main(N,L).
to get all possible solution.
here N is fixed quantity and is not variable .
L can be variable or some fixed quantity.
here it will backpropogate for L but not for N
Or we can use query like
main2(N,L).
here N can be variable and it will backpropogate upto 10000.
I have used optimization and reorder the subgoals to make it faster 
also as in operator is not working in gprolog so I have used between operator.
Note for value of N above 10 it will take some time to produce answer also no efficient algo was asked.
*/


queen(0,[]) :- !.
queen(1,[(1,1)]) :- !.
queen(N,L) :- N>0, length(L, N), inita(N,L,1,[]), checka(L).

inita(N,[(N,B)],N,Z) :- between(1,N,B), \+(membe(B,Z)).
inita(N,[(P,B)|O],P,Z) :- between(1,N,B), M is P+1, \+(membe(B,Z)), inita(N,O,M,[B|Z]).

membe(B,[B|_]) :- !.
membe(B,[_|A]) :- membe(B,A).

checka([(_,_)]).
checka([(A,B)|M]) :- diago((A,B),M), checka(M).

diago((A,B),[(C,D)]) :- abs(B-D)=\=abs(A-C).
diago((A,B),[(C,D)|O]) :- abs(B-D)=\=abs(A-C), diago((A,B),O).

main(N,L):- queen(N,L).
main2(N,L):- between(2,10000,N),queen(N,L).