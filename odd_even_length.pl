evenlength:- write('even').
oddlength:- write('odd').

oddeven(X):- length(X,L), L>=0 ->
(
L1 is mod(L,2), L1=:=0 -> evenlength; oddlength
).