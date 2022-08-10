/* Relação de pai */

pai(agnaldo, guilherme).     	/*meu pai*/
pai(agnaldo, maria_eduarda). 	/*meu pai e minha irma*/
pai(agnaldo, joyce).			/*meu pai e minha irma*/
pai(roberto, agnaldo).			/*meu avô e meu pai*/
pai(roberto, robertinho).		/*meu avô e meu tio*/
pai(robertinho, cecilia).		/*meu tio e minha prima*/
pai(benedito, roberto).			/*meu bisavô e meu vô*/
pai(joao, elza).				/*meu bisavô e minha vó*/
pai(arquimedes2, viviane).		/*meu avô e minha mãe*/
pai(arquimedes2, eduardo).		/*meu avô e meu tio*/
pai(eduardo, hryan).			/*meu tio e meu primo*/
pai(arquimedes, arquimedes2).	/*meu bisavô e meu vô*/
pai(ozelio, ideis).				/*meu bisavô e minha vó*/

/*=====================================================================*/

/* Relação de mãe */

mae(viviane, guilherme).		/*minha mãe*/
mae(viviane, joyce).			/*minha mãe e minha irma*/
mae(viviane, maria_eduarda).	/*minha mãe e minha irma*/	
mae(ideis, viviane).			/*minha avó e minha mãe*/
mae(ideis, eduardo).			/*minha avó e meu tio*/
mae(maria, ideis).		 		/*minha bisavó e minha vó*/
mae(maria2, arquimedes2).		/*minha bisavó e meu vô*/
mae(julia, elza).				/*minha bisavó e minha vó*/
mae(elza, agnaldo).				/*minha avó e meu pai*/
mae(elza, robertinho).			/*minha avó e meu tio*/
mae(ervira, roberto).			/*minha bisavó e meu vô*/




/*=====================================================================*/

/* Relação de irmãos */

irmao(X, Y) :- pai(Z, X), pai(Z, Y), X\==Y.

/*=====================================================================*/

/* Relação de tios */

tio(X, Y) :- pai(Z, Y), irmao(Z, X), X\==Z.
tio(X, Y) :- mae(Z, Y), irmao(Z, X), X\==Z.

/*=====================================================================*/

/* Relação de primos */

primo(X, Y) :- tio(Z, X), pai(Z, Y).
primo(X, Y) :- tio(Z, X), mae(Z, Y).
    
/*=====================================================================*/

/* Relação de netos */

neto(X, Y) :- pai(Z, X), pai(Y, Z).
neto(X, Y) :- pai(Z, X), mae(Y, Z).
neto(X, Y) :- mae(Z, X), pai(Y, Z).
neto(X, Y) :- mae(Z, X), mae(Y, Z).