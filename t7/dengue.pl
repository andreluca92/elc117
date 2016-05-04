regra1(D) :- D = [f,_,_,_,_,_,_].
regra1(D) :- D = [_,f,_,_,_,_,_].
regra1(D) :- D = [_,_,f,_,_,_,_].

regra2(D) :- D = [h,g,_,_,_,_,_].
regra2(D) :- D = [_,h,g,_,_,_,_].
regra2(D) :- D = [_,_,h,g,_,_,_].
regra2(D) :- D = [_,_,_,h,g,_,_].
regra2(D) :- D = [_,_,_,_,h,g,_].
regra2(D) :- D = [_,_,_,_,_,h,g].



regra3(D) :- D = [_,l,_,_,_,_,_].
regra3(D) :- D = [_,_,l,_,_,_,_].
regra3(D) :- D = [_,_,_,l,_,_,_].
regra3(D) :- D = [_,_,_,_,l,_,_].
regra3(D) :- D = [_,_,_,_,_,l,_].

regra4(D) :- D = [m,_,_,_,_,_,_].
regra4(D) :- D = [_,_,_,_,_,_,m].

regra5(D) :- D = [_,_,_,_,p,_,_].
regra5(D) :- D = [_,_,_,_,_,p,_].
regra5(D) :- D = [_,_,_,_,_,_,p].

dengue(D) :-
	D = [_,_,_,_,_,_,_],
	Casas = [f,g,h,l,m,p,t],
	permutation(Casas, D),
	regra1(D),
	regra2(D),
	regra3(D),
	regra4(D),
	regra5(D).

/*
Questão 1. Qual das seguintes opções é uma lista
completa e correta da ordem que as sete casas devem
ser visitadas?
(A) F, T, H, L, P, G e M.
(B) H, G, F, L, T, P e M. <-
(C) L, T, F, H G, M e P.
(D) M, F, D, H, L, G e T.
(E) M, L, H, G, F, P e T.

dengue([f,t,h,l,p,g,m]).
false
dengue([h,g,f,l,t,p,m]).
true
dengue([l,t,f,h,g,m,p]).
false
dengue([m,f,d,h,l,g,t]).
false
dengue([m,l,h,g,f,p,t]).
false

Questào 2. Se em um trecho do percurso visitarmos
as casas T, L e F, exatamente nesta ordem, qual a
posiição que G foi visitada?
(A) Segunda.
(B) Terceira.
(C) Quarta.
(D) Quinta. <-
(E) Sexta.

dengue([_,g,t,l,f,_,_]).
false
dengue([_,_,g,t,l,f,_]).
false
dengue([t,l,f,g,_,_,_]).
false
dengue([t,l,f,_,g,_,_]).
true
dengue([t,l,f,_,_,g,_]).
false

Questão 3. Se a casa H é a primeira a ser visitada,
qual a quarta casa a ser visitada?
(A) F.
(B) G.
(C) L. <-
(D) M.
(E) P.

dengue([h,_,_,f,_,_,_]).
false
dengue([h,_,_,g,_,_,_]).
false
dengue([h,_,_,l,_,_,_]).
true
dengue([h,_,_,m,_,_,_]).
false
dengue([h,_,_,p,_,_,_]).
false

Questão 4. Se a casa P foi visitada em sexto, a casa
H poderia ser visitada em várias posições exceto:
(A) Primeira.
(B) Segunda.
(C) Terceira.
(D) Quarta.
(E) Quinta. <-

dengue([h,_,_,_,_,p,_]).
true
dengue([_,h,_,_,_,p,_]).
true
dengue([_,_,h,_,_,p,_]).
true
dengue([_,_,_,h,_,p,_]).
true
dengue([_,_,_,_,h,p,_]).
false

Questão 5. Se exatamente uma casa foi visitada entre
F e P, quais possíveis casas são estas?
(A) G e H.
(B) G e T.
(C) H e M.
(D) L e M.
(E) L e T. <-

dengue([_,_,f,g,p,_,_]).
false
dengue([_,_,f,h,p,_,_]).
false
dengue([_,_,f,l,p,_,_]).
true 
dengue([_,_,f,m,p,_,_]).
false.
dengue([_,_,f,t,p,_,_]).
true

*/