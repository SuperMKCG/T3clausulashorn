% Hechos
 come(gato, raton).
 come(raton, queso).
 es_animal(gato).
 es_animal(raton).
 es_animal(queso). % Solo como ejemplo, aunque queso no es animal

 % Reglas
 come_cadena(X, Y) :- come(X, Y). 
 % Si X come a Y directamente
 come_cadena(X, Y) :- come(X, Z), come_cadena(Z, Y). 
 % Si X come a algo que come a Y

 % Saber si el gato come queso
 come(gato,queso) :- come(gato,raton), come(raton,queso)
 % Saber si el gato come el raton y raton come queso
 come_cadena(gato,raton) :- come(gato,raton), come(raton,queso)
