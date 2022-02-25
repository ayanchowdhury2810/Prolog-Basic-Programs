sumList([], 0).
sumList([H|T], Sum) :- sumList(T, Rest), Sum is H + Rest.
