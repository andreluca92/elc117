
/*
OBI2014 Fase 1 Nível 2
Qestão: DJ (pág 5)
*/

regra1(D) :- D = [h,_,_,_,_,_].
regra1(D) :- D = [_,_,h,_,_,_].
regra1(D) :- D = [_,_,_,_,h,_].

regra2(D) :- D = [s,_,_,p,_,_].
regra2(D) :- D = [s,_,_,_,p,_].
regra2(D) :- D = [s,_,_,_,_,p].
regra2(D) :- D = [_,s,_,_,p,_].
regra2(D) :- D = [_,s,_,_,_,p].
regra2(D) :- D = [_,_,s,_,_,p].

regra3(D) :- D = [f,_,r,_,_,_].
regra3(D) :- D = [_,f,_,r,_,_].
regra3(D) :- D = [_,_,f,_,r,_].
regra3(D) :- D = [_,_,_,f,_,r].

dj(D) :-
	D = [_,_,_,_,_,_],
	Musicas = [f,s,r,p,h,j],
	permutation(Musicas, D),
	regra1(D),
	regra2(D),
	regra3(D).

/*
Questão 11. Qual das seguintes alternativas é
uma possível lista completa e correta dos estilos
executados, do primeiro para o último?
(A) funk, samba, rock, pop, hip-hop, jazz
(B) hip-hop, samba, jazz, pop, funk, rock
(C) rock, samba, funk, hip-hop, jazz, pop
(D) pop, rock, jazz, funk, hip-hop, samba
(E) jazz, samba, hip-hop, funk, pop, rock <-

dj([f,s,r,p,h,j]).
false
dj([h,s,j,p,f,r]).
false
dj([r,s,f,h,j,p]).
false
 dj([p,r,j,f,h,s]).
false
dj([j,s,h,f,p,r]).
true

Questão 12. Se o DJ tocar jazz em quinto lugar,
qual das seguintes alternativas é necessariamente
verdadeira?
(A) O sexto estilo a ser tocado é pop. <-
(B) O terceiro estilo a ser tocado é hip-hop.
(C) O segundo estilo a ser tocado é rock.
(D) O primeiro estilo a ser tocado é funk.
(E) O primeiro estilo a ser tocado é samba.

dj([_,_,_,_,j,X]). (Pop é a única opção, nos dois casos)
X = p;
X = p.
dj([_,_,X,_,j,_]). (Pode ser hip-hop nas tanbém pode ser samba)
X = h;
X = s.
dj([_,X,_,_,j,_]). (Funk é a única opção nos dois casos)
X = f;
X = f.
dj([X,_,_,_,j,_]). (O primeiro estilo tem que ser smba ou hip-hop)
X = s;
X = h.
dj([X,_,_,_,j,_]). (Pode ser samba mas também pode ser hip-hop)
X = s;
X = h.

Questão 13. Se rock é tocado imediatamente após
samba, qual poderia ser o segundo estilo tocado?
(A) jazz
(B) funk <-
(C) hip-hop
(D) pop
(E) rock

dj([_,j,s,r,_,_]).
false
dj([_,f,s,r,_,_]).
true
dj([_,h,s,r,_,_]).
false
dj([_,p,s,r,_,_]).
false
18 ?- dj([_,r,s,r,_,_]).
false

Questão 14. Se samba é o segundo estilo a ser
tocado, qual das seguintes afirmativas é necessariamente
falsa?
(A) Jazz é o primeiro a ser tocado.
(B) Jazz é o quinto a ser tocado. <-
(C) Hip-Hop é o terceiro a ser tocado.
(D) Rock é o quinto a ser tocado.
(E) Pop é o sexto a ser tocado.

dj([j,s,_,_,_,_]).
true .
dj([_,s,_,_,j,_]).
false.
dj([_,s,h,_,_,_]).
true
dj([_,s,_,_,r,_]).
true
dj([_,s,_,_,_,p]).
true

Questão 15. Cada um dos seguintes estilos poderia
ser tocado imediatamente após hip-hop exceto:
(A) funk
(B) jazz <-
(C) pop
(D) samba
(E) rock

dj([h,f,_,_,_,_]).
true
dj([h,j,_,_,_,_]).
false.
dj([_,_,_,_,h,p]).
true 
dj([h,s,_,_,_,_]).
true
dj([_,_,h,r,_,_]).
true
*/