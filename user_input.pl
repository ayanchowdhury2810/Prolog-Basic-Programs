string1(ayan).
go:-write("Enter your name:"), nl, read(X), nl, string1(Y), X =@= Y, nl, write("Matched") ; write("Not Matched").