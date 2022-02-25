count_list([], 0).
count_list([_|Tail], N) :- count_list(Tail, N1), N is N1 + 1.
