print_list([]) :- nl, write('empty list').
print_list([H|T]) :- write(H), nl, print_list(T).
