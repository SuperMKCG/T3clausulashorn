 % humanos
 humano(socrates).
 humano(platon).

 % amor
 ama(juan,maria).


 % mortales
 mortal(X) :- humano(X). 

 % mujeres cientificas.... NOTA: HASTA AHORA NO HAY
 cientifico(X) :- fail.

 % Pensadores
 pensador(X) :- fail.

 % Sabio
 sabio(X) :- fail.

 % humanos antiguos
 humano_antiguo(X) :- fail.
 
 % Pensadores (filosofos o cientificos)
 pensa_fil_cien(X) :- fail.

 % Unificacion
 unificacion(X) :- fail.


 % -------HANOI-----------
 hanoi(N) :- mover(N, poste1, poste3, poste2).
 
 % Hechos generados
 movimiento(poste1, poste2).
 movimiento(poste1, poste3).
 movimiento(poste2, poste3).


 mover(0,_,_,_).
 mover(N,A,B,C) :-
 N > 0,
 M is N - 1,
 mover(M,A,C,B),
 escribir_mov(A,B),
 mover(M,C,B,A).

 escribir_mov(Desde,Hasta) :-
 write('mover desde: '), write(Desde),
 write(' hasta: '), write(Hasta), nl.