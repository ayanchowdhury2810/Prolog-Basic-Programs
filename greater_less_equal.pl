max_element(X,Y,X) :- X>Y, !.
max_element(X,Y, 'Both are equal') :- X=:=Y, !.
max_element(X,Y,X) :- X<Y, !.
