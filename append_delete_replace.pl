%append
append([1,2],[3,4,5],X).

%delete
del(Y, Y, []).
del(X, [X|L1], L1).
del(X, [Y|L], [Y,L1]) :- del(X,L,L1).

%replace
replace(_, _, [], []).
replace(O, R, [O|T], [R|T2]) :- replace(O, R, T, T2).
replace(O, R, [H|T], [H|T2]) :- H \= O, replace(O, R, T, T2).
