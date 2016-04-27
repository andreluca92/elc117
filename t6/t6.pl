
repete(0, _, []).
repete(N, C, L) :- 
N > 0,
L = [C | T],
N1 is N - 1,
repete(N1, C, T).

% 1)
zeroInit(L) :-
L = [H|_],
H = 0.

% 2)
has5(L) :-
L = [_,_,_,_,_].

% 3)
hasN(L,N) :-
length(L,N).

% 4) 2 elevado de N até 0:
% potN0(Expoente,Lista)
potN0(0,[1]). % caso base
potN0(N, [H|T]) :-
	N1 is N-1,
	potN0(N1, T),
	H is 2^N.

% 5) Multiplica elementos de duas listas
% zipmult(Lista 1, Lista 2, Lista resultante)
zipmult([],[],[]).
zipmult([H1|T1], [H2|T2], [HR|TR]) :-
	HR is H1 * H2,
	zipmult(T1, T2, TR).

% 7) Pega somente os valores positivos da lista
% positivos(Lista, Lista resultante)
positivos(L1, LR) :-
	exclude(>=(0), L1, LR).

%10 Azulejos
% azulejos(Numero de azulejos, Quadrados)
azulejos(0,0).
azulejos(Na,Nq) :- 
	Maior is floor(sqrt(Na)),
	Resto is Na - Maior*Maior,
	azulejos(Resto,X),
	Nq is 1 + X.