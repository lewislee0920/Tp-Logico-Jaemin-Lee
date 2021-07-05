viveEnMansionDreadbury(tiaAgatha).
viveEnMansionDreadbury(mayodormo).
viveEnMansionDreadbury(charles).

odia(charles, Persona):-
   viveEnMansionDreadbury(Persona),
   not(odia(tiaAgatha, Persona)).
   
odia(tiaAgatha, Persona):-
   viveEnMansionDreadbury(Persona),
   Persona \= mayodormo.

odia(mayodormo, Persona):-
   odia(tiaAgatha, Persona).

masRicoQue(tiaAgatha, Persona):-
   not(odia(mayodormo, Persona)),
   viveEnMansionDreadbury(Persona).
   
mata(LoQueMata, Victima):-
   not(masRicoQue(Victima, LoQueMata)),
   viveEnMansionDreadbury(LoQueMata).
   
/* 
1)
   mata(LoQueMata, tiaAgatha).
	 LoQueMata = tiaAgatha 
2) 
   odia(_, milhouse).
      false.

   odia(charles, Persona).
      Persona = mayodormo .

   odia(Persona, tiaAgatha).
	  Persona = tiaAgatha ;
	  Persona = mayodormo.

   odia(Odiadores, Odiados).
	  Odiadores = charles,
	  Odiados = mayodormo ;
	  Odiadores = Odiados, 
	  Odiados = tiaAgatha ;
	  Odiadores = tiaAgatha,
	  Odiados = charles ;
	  Odiadores = mayodormo,
	  Odiados = tiaAgatha ;
	  Odiadores = mayodormo,
	  Odiados = charles.

   odia(mayodormo, Alguien).
      Alguien = tiaAgatha .

   odia(mayodormo, _).
      true .
*/
