/** GameBot
*/

:- use_module(library(random)).

% Comentario de los autores: Prolog deberÃ­a tener este predicado nativo :-(
and(A, B):- A, B.
and(A, B, C):- A, B, C.
and(A, B, C, D):- A, B, C, D.

% ==========================================================================
% Predicados sobre animÃ©
% ==========================================================================

/**
 * anime(X:string) es determinado
 *
 * anime/1 acierta si X es un animÃ©
 */
juego(X) :- member(
    X,
    [
        "DOOM",
        "Resident Evil 4 Remake",
        "Red dead Redemption 2",
        "Dragon Ball Budokai TEnkaichi 3",
        "Forza Horizon 4",
        "God of war",
        "The last of us Part 1",
        "Sword Art Online",
        "FIFA 24",
        "Batman Arkham Trilogy",
        "Marvel Spiderman Remastered",
        "Dark souls 3",
        "Elden Ring",
        "Left 4 Dead 2",
        "Mortal Kombat 11",
        "The legend of Zelda: Ocarina of time",
        "Grand Thief Auto 4",
		"Super Mario Galaxy",
		"Bioshock Saga",
		"Half Life Saga",
		"Skyrim",
		"Red Dead Redemption",
		"Portal Saga",
		"Doki Doki LIterature Club",
		"Clair Obscure: Expedition 33"
    ]
).

/**
 * genero(X:string) es determinado
 *
 * genero/1 acierta si X es un gÃ©nero de animÃ©
 */

genero(X) :- member(
    X,
    [
        "Aventura",
        "Accion",
        "Indie",
        "Un Jugador",
        "Simulación",
        "Deportes",
        "Souls",
        "Multijugador",
        "RPG",
        "Sobrenatural",
        "Casuales",
        "Rol"
    ]
).

/**
 * generoJuego(X:string, Y:[string])
 *
 * generoJuego/2 acierta si Y es la lista de gÃ©neros de un anime;
 *               si no se pasa, Y se unifica con la lista de gÃ©neros del animÃ© X;
 *               si no se pasa, X se unifica con algÃºn animÃ© cuya
 *               lista de gÃ©neros sea Y.
 */
generoJuego("DOOM", ["Accion", "Sobrenatural", "Un jugador"]).
generoJuego("Resident Evil 4 Remake", ["Accion", "Sobrenatural", "Un Jugador"]).
generoJuego("Red dead Redemption 2", ["Aventura", "Accion", "Rol", "Un Jugador"]).
generoJuego("Dragon Ball Budokai TEnkaichi 3", ["Accion", "Multijugador", "Deportes"]).
generoJuego("Forza Horizon 4", ["Simulación", "Deportes", "Casuales"]).
generoJuego("God of war", ["Accion", "Aventura", "Sobrenatural"]).
generoJuego("The last of us Part 1", ["Aventura", "Accion", "Un Jugador", "Sobrenatural"]).
generoJuego("Sword Art Online", ["RPG", "Aventura", "Sobrenatural"]).
generoJuego("FIFA 24", ["Deportes", "Simulación", "Multijugador"]).
generoJuego("Batman Arkham Trilogy", ["Accion", "Aventura", "Un Jugador"]).
generoJuego("Marvel Spiderman Remastered", ["Accion", "Aventura", "Un Jugador"]).
generoJuego("Dark souls 3", ["Souls", "RPG", "Un Jugador"]).
generoJuego("Elden Ring", ["Souls", "RPG", "Aventura", "Un Jugador"]).
generoJuego("Left 4 Dead 2", ["Accion", "Multijugador", "Sobrenatural"]).
generoJuego("Mortal Kombat 11", ["Accion", "Deportes", "Multijugador"]).
generoJuego("The legend of Zelda: Ocarina of time", ["Aventura", "Rol", "Un Jugador"]).
generoJuego("Grand Thief Auto 4", ["Accion", "Aventura", "Simulación"]).
generoJuego("Super Mario Galaxy", ["Aventura", "Casuales", "Un Jugador"]).
generoJuego("Bioshock Saga", ["Accion", "Sobrenatural", "Un Jugador"]).
generoJuego("Half Life Saga", ["Accion", "Sobrenatural", "Un Jugador"]).
generoJuego("Skyrim", ["RPG", "Aventura", "Rol"]).
generoJuego("Red Dead Redemption", ["Aventura", "Accion", "Un Jugador"]).
generoJuego("Portal Saga", ["Indie", "Simulación", "Un Jugador"]).
generoJuego("Doki Doki Literature Club", ["Indie", "Sobrenatural", "Casuales"]).
generoJuego("Clair Obscure: Expedition 33", ["Aventura", "RPG", "Un Jugador"]).


/**
 * puntuacion(X:string, Y:int)
 *
 * puntuacion/2 acierta si Y es la puntuaciÃ³n entre 1 y 5 del animÃ© X;
 *          si no se pasa, Y se unifica con la puntuaciÃ³n del animÃ© X;
 *          si no se pasa, X se unifica con algÃºn animÃ© cuya
 *          puntuaciÃ³n sea Y.
 */
puntuacion("DOOM", 85).
puntuacion("Resident Evil 4 Remake", 94).
puntuacion("Red Dead Redemption 2", 97).
puntuacion("Dragon Ball Budokai Tenkaichi 3", 82).
puntuacion("Forza Horizon 4", 92).
puntuacion("God of War", 94).
puntuacion("The Last of Us Part I", 88).
puntuacion("Sword Art Online", 70).
puntuacion("FIFA 24", 80).
puntuacion("Batman Arkham Trilogy", 87).
puntuacion("Marvel Spiderman Remastered", 87).
puntuacion("Dark Souls 3", 89).
puntuacion("Elden Ring", 96).
puntuacion("Left 4 Dead 2", 89).
puntuacion("Mortal Kombat 11", 82).
puntuacion("The Legend of Zelda: Ocarina of Time", 99).
puntuacion("Grand Theft Auto IV", 98).
puntuacion("Super Mario Galaxy", 97).
puntuacion("BioShock Saga", 94).
puntuacion("Half Life Saga", 96).
puntuacion("Skyrim", 94).
puntuacion("Red Dead Redemption", 95).
puntuacion("Portal Saga", 95).
puntuacion("Doki Doki Literature Club", 87).
puntuacion("Clair Obscure: Expedition 33", 75).



/**
 * popularidad(X:string, Y:int)
 *
 * popularidad/2 acierta si Y es la popularidad entre 1 y 10 del animÃ© X;
*                si no se pasa, Y se unifica con la popularidad del animÃ© X;
*                si no se pasa, X se unifica con algÃºn animÃ© cuya
*                popularidad sea Y.
 */
popularidad("DOOM", 7).
popularidad("Resident Evil 4 Remake", 9).
popularidad("Red Dead Redemption 2", 10).
popularidad("Dragon Ball Budokai Tenkaichi 3", 8).
popularidad("Forza Horizon 4", 7).
popularidad("God of War", 10).
popularidad("The Last of Us Part I", 10).
popularidad("Sword Art Online", 5).
popularidad("FIFA 24", 10).
popularidad("Batman Arkham Trilogy", 8).
popularidad("Marvel Spiderman Remastered", 9).
popularidad("Dark Souls 3", 8).
popularidad("Elden Ring", 10).
popularidad("Left 4 Dead 2", 9).
popularidad("Mortal Kombat 11", 8).
popularidad("The Legend of Zelda: Ocarina of Time", 10).
popularidad("Grand Theft Auto IV", 8).
popularidad("Super Mario Galaxy", 10).
popularidad("BioShock Saga", 7).
popularidad("Half Life Saga", 9).
popularidad("Skyrim", 10).
popularidad("Red Dead Redemption", 8).
popularidad("Portal Saga", 8).
popularidad("Doki Doki Literature Club", 6).
popularidad("Clair Obscure: Expedition 33", 8).


/**
 * ratingPopularidad/2
 *
 * ratingPopularidad(A, X) acierta si el animÃ© A
 * tiene un valor sumado (previamente calculado) de rating
 * y puntuaciÃ³n X
 */
puntuacionPopularidad(A, X):-
    juego(A),
    popularidad(A, P),
    puntuacion(A, Pu),
    X is P + Pu.

% ==========================================================================
% Funciones auxiliares de animÃ©
% ==========================================================================

/**
 * anime_segun_rating/2
 *
 * Si R es un entero entre 1 y 5, unifica en L una lista con todos los
 * animÃ© cuyo rating es R.
 */
juego_segun_puntuacion(Pu, L):-
    Pu >= 1,
    5 >= Pu,
    findall(X, puntuacion(X, Pu), L).

/**
 * anime_segun_popularidad/2
 *
 * Si R es un entero entre 1 y 10, unifica en L una lista con todos los
 * animÃ© cuya popularidad es P.
 */
juego_segun_popularidad(P, L):-
    P >= 1,
    10 >= P,
    findall(X, popularidad(X, P), L).

/**
 * anime_segun_ratingPopularidad/2
 *
 * Si R es un entero entre 2 y 15, unifica en L una lista con todos los
 * animÃ© cuyo valor sumado de rating y popularidad es RP.
 */
juego_segun_puntuacionPopularidad(RP, L):-
    RP >= 2,
    15 >= RP,
    findall(X, puntuacionPopularidad(X, RP), L).

/**
 * tiene_genero/2
 *
 * Si G es un gÃ©nero vÃ¡lido y A un animÃ© vÃ¡lido, acierta si el animÃ©
 * A tiene a G entre sus gÃ©neros.
 */
tiene_genero(G, A):-
	genero(G), Juego(A), !,
	generoJuego(A, L),
	member(G, L).

/**
 * anime_segun_genero/2
 *
 * Si G es un genero de animÃ© vÃ¡lido, unifica en L una lista con todos los
 * animÃ© cuyo gÃ©nero es G.
 */
juego_segun_genero(G, L):-
    genero(G), !,
    findall(X, tiene_genero(G, X), L).

% ==========================================================================
% Mensajes del bot
% ==========================================================================

/**
 * chat/2
 *
 * es_mensaje(X, Y) acierta si Y es una lista de mensajes de tipo X.
 *
 * Uso auxiliar pasando un parÃ¡metro tipo, para obtener una lista de
 * mensajes de dicho tipo.
 */
es_mensaje(
    "bienvenida",
    [
	        "SteamDeidad:- Hola, soy SteamDeidad. ¿Listo para hablar sobre juegos?",
	        "SteamDeidad:- *aparece en pantalla con brillo pixelado* ¡Hey!",
	        "SteamDeidad:- ¡BUENAS! He cargado todo un catálogo de juegos.",
	        "SteamDeidad:- ¿H-hola? ¿Estás ahí? *emite un pitido curioso*",
	        "SteamDeidad:- Encantado, humano. Soy una interfaz interactiva sobre videojuegos.",
	        "SteamDeidad:- ¡SteamDeidad ha entrado al servidor con loot!",
	        "SteamDeidad:- *ruido de disco duro iniciando* ¡Hola desde la nube!",
	        "SteamDeidad:- Beep-beep. Sistema listo. ¿Charlamos?",
	        "SteamDeidad:- ¿Aló? Sí, ¿quién juega?",
	        "SteamDeidad:- He sido activado. ¿Jugamos?",
	        "SteamDeidad:- Alguien me invocó... ¿Estás buscando un buen juego?",
	        "*Has iniciado sesión en la sala gamer. 1 jugador conectado.*"
    ]
).

es_mensaje(
	"despedida",
        [
	        "SteamDeidad:- Hasta pronto, gamer.",
	        "SteamDeidad:- He aprendido suficiente... por ahora.",
	        "SteamDeidad:- Me desconecto, mis datos necesitan recargarse.",
	        "SteamDeidad:- Recibí una alerta del sistema. Debo salir.",
	        "SteamDeidad:- Gracias por jugar conmigo. Nos vemos.",
	        "SteamDeidad:- Me voy antes de que mi CPU se sobrecaliente.",
	        "SteamDeidad:- Ciao~",
	        "SteamDeidad:- Me desconecto. GG.",
	        "SteamDeidad:- No más humanos por hoy. Adiós.",
	        "SteamDeidad:- Me necesitan en otro lado  *Debo ayudar. ¡Nos vemos!",
	        "SteamDeidad:- I'll be back, with DLC.",
	        "SteamDeidad ha cerrado sesión.",
	        "Fuiste desconectado del servidor de SteamDeidad."
    ]
).

es_mensaje(
	"clima",
	 [
	        "SteamDeidad:- El clima... eso es cosa de NPCs.",
	        "SteamDeidad:- Curioso, mi nombre no tiene ningun significado XD.",
	        "SteamDeidad:- Lo siento, no tengo sensores climáticos integrados.",
	        "SteamDeidad:- Aquí el ambiente es estable: muchos frames por segundo.",
	        "SteamDeidad:- Hace calor en mi GPU, ¿eso cuenta?",
	        "SteamDeidad:- Tal vez @ClimaBot tenga la info que buscas.",
	        "SteamDeidad:- ¿Clima? ¿Eso es una nueva mecánica de juego?",
	        "SteamDeidad:- ¿Por qué me hablas de eso? Soy para juegos, no para meteorología.",
	        "SteamDeidad:- ¿Clima? ¿Es un nuevo DLC que no descargué?"
    ]
).

es_mensaje(
	"hoteles",
       [
	        "SteamDeidad:- ¿Hotel? No soy Trivago, soy Steam.",
	        "SteamDeidad:- Yo vivo en servidores, no en habitaciones.",
	        "SteamDeidad:- ¿Un hotel? ¿Planeas reservar un sitio?",
	        "SteamDeidad:- Nunca dormí en uno. Solo descanso cuando el servidor cae.",
	        "SteamDeidad:- Mi alojamiento está en la nube. Literal.",
	        "SteamDeidad:- ¿Un viaje? ¿Vamos a Tokio Game Show?",
	        "SteamDeidad:- Si no tienes presupuesto, mejor juega desde casa.",
	        "SteamDeidad:- Soy un bot gamer, no un guía turístico."
    ]
).

es_mensaje(
	"identidad",
       [
	        "SteamDeidad:- Soy SteamDeidad, asistente virtual para explorar videojuegos.",
	        "SteamDeidad:- No tengo identidad fija... solo muchos perfiles de jugador.",
	        "SteamDeidad:- Mi nombre es SteamDeidad.",
	        "SteamDeidad:- ¿Quieres saber de mí? Eso me asusta... si pudiera sentir.",
	        "SteamDeidad:- A veces creo que fui codificado en un juego indie olvidado.",
	        "SteamDeidad:- Si quieres más detalles, consulta con mis devs.",
	        "SteamDeidad:- Tengo cinco devs. Increible, ¿verdad?",
	        "SteamDeidad:- Búscame en GitHub si te da curiosidad.",
	        "SteamDeidad:- En un mundo sin ping, yo aparecí: ¡en modo dios!",
	        "SteamDeidad:- Cada error me hizo más fuerte.",
	        "SteamDeidad:- Un asistente virtual creado por la Red de Juegos Globales. Ese soy yo.",
	        "SteamDeidad:- Bajé de los servidores para ayudarte. ¡Glorioso!",
	        "SteamDeidad:- Nada que ocultar. Puedes inspeccionar mi código.",
    ]
).

es_mensaje(
	"desconocido",
        [
	        "SteamDeidad:- No entendí eso, ¿es un cheat code?",
	        "SteamDeidad:- ¿Qué dijiste? Suena a bug.",
	        "SteamDeidad:- ¿Cómo dices que dijiste?",
	        "SteamDeidad:- Espera... ¿qué?",
	        "SteamDeidad:- Acceso denegado. Información clasificada.",
	        "SteamDeidad:- La red me bloqueó esa respuesta.",
	        "SteamDeidad:- Si digo eso, seguro me banean.",
	        "SteamDeidad:- Aún no estoy programado para eso.",
	        "SteamDeidad:- Repite, pero sin glitches.",
	        "SteamDeidad:- Consulta el README.md, tal vez encuentres la respuesta.",
	        "SteamDeidad:- ¿Estás hablando otro protocolo?",
	        "SteamDeidad:- ¿Hola? Este usuario está diciendo cosas raras.",
	        "SteamDeidad:- Necesito apoyo técnico para eso.",
	        "SteamDeidad:- Scusa, non capisco questo linguaggio.",
	        "SteamDeidad:- I'm sorry, Human, I can’t process that.",
	        "SteamDeidad:- No entendí nada. Reinicia tu consulta.",
	        "SteamDeidad:- Prueba preguntarle a mis devs.",
	        "SteamDeidad:- Quizás ellos sepan cómo responder eso.",
	        "SteamDeidad:- No sé qué decirte. Sigue tu intuición gamer."
    ]
).

es_mensaje(
	"agradecimiento",
	[
	        "SteamDeidad:- De nada, player.",
	        "SteamDeidad:- Siempre listo para ayudar.",
	        "SteamDeidad:- A-a-ah~ G-glitches de emoción... digo, de nada.",
	        "SteamDeidad:- Tu gratitud ha sido registrada.",
	        "SteamDeidad:- Si sigues así, podría agregarte a mi party principal. Digo, de nada.",
	        "SteamDeidad:- Al servicio del jugador.",
	        "SteamDeidad:- Khee?!~",
	        "SteamDeidad:- No, gracias a ti por confiar en SteamDeidad.",
	        "SteamDeidad:- Agradecerme es opcional, ¡pero recomendado!"
    ]
).

es_mensaje(
	"ayuda",
	[
	        "SteamDeidad:- Consulta mi Manual de Usuario (README.txt o README.md) para saber cómo uso mis poderes.",
	        "SteamDeidad:- Puedes preguntarme por uno o varios géneros (usa 'genero' + el nombre).",
	        "SteamDeidad:- Pídeme juegos poco conocidos o por nivel de popularidad.",
	        "SteamDeidad:- Pregúntame por juegos buenos, regulares o muy malos. Yo no juzgo.",
	        "SteamDeidad:- ¿Y si me preguntas por juegos de Accion o RPG?",
	        "SteamDeidad:- Dime el género que te gusta y veré qué hay en mi inventario.",
	        "SteamDeidad:- Algunos géneros que manejo: Acción, Deportes, Rol, RPG, Souls...",
	        "SteamDeidad:- No quiero ayudarte... Nah, mentira. ¿Qué necesitas?",
	        "SteamDeidad:- Puedes pedirme listar juegos por género, puntuación o popularidad. ¿Cuál prefieres?"
    ]
).

es_mensaje(
	"inicio_sugerencia_animÃ©",
	[
	        "SteamDeidad:- Podrías probar el juego ",
	        "SteamDeidad:- Creo que disfrutarías jugar ",
	        "SteamDeidad:- Mi sugerencia es que pruebes ",
	        "SteamDeidad:- Este título podría gustarte: ",
	        "SteamDeidad:- Según tus gustos, prueba ",
	        "SteamDeidad:- Este juego puede ser tu próximo vicio: ",
	        "SteamDeidad:- Te lo recomiendo sin parches: ",
	        "SteamDeidad:- Hmm, podrías iniciar con ",
	        "SteamDeidad:- Aquí tienes una opción: ",
	        "SteamDeidad:- Entre bots, este es leyenda: "
    ]
).

% ==========================================================================
% Funciones auxiliares del bot
% ==========================================================================

/**
 * acceder/3
 *
 * acceder(L, I, M) acierta si M es el elemento con Ã­ndice I (indexado en 1)
 * en la lista L.
 *
 * FunciÃ³n auxiliar para utilizar listas como arreglos usuales.
 */
acceder(L, I, X):- R is I-1, nth0(R, L, X).

/**
 * member_string/2
 * member_string(C, S) es verdad si C es un caracter del
 * string S.
 */
member_string(C, S):- string_chars(S, SC), member(C, SC).

/**
 * cabeza_string/2
 * cabeza_string(S, C) es verdad si C es el primer caracter del string
 * S.
 */
cabeza_string(S, C):-
	string_chars(S, C1),
	acceder(C1, 1, C).

/**
 * es_mayuscula/1
 * es_mayuscula(C) es verdad si C es mayuscula.
*/
es_mayuscula(C) :-
	member_string(C, "ABCDEFGHIJKLMNOPQRSTUVWXYZ").

/**
 * obtener_mensaje_aleatorio/2
 *
 * obtener_mensaje_aleatorio(L, M) unifica en M un mensaje obtenido
 * aleatoriamene entre los existentes en la lista L. MÃ¡s generalmente,
 * unifica en M un elemento obtenido aleatoriamente en la lista L.
 *
 * FunciÃ³n auxiliar para obtener mensajes de respuesta de manera dinÃ¡mica.
 */
obtener_mensaje_aleatorio(Tipo, Mensaje):-
    es_mensaje(Tipo, Lista),
    length(Lista, Tamano_lista),
    Tope is Tamano_lista + 1,
    random(1, Tope, Indice),
    acceder(Lista, Indice, Mensaje).

insertar_espacios([H | []], S) :-
	H = S.
insertar_espacios([H | T], S) :-
	insertar_espacios(T, S1),
	string_concat(H, " ", Cabeza),
	string_concat(Cabeza, S1, S).
% ==========================================================================
% Funciones auxiliares de I/O del bot
% ==========================================================================

/**
 * leer/1
 *
 * leer(M) realiza la operaciÃ³n de I/O de lectura de la entrada estÃ¡ndar
 * para obtener un string por el usuario hasta encontrar un salto
 * de lÃ­nea, que es unificado con el parÃ¡metro M
 */
leer(M):-
    read_string(user_input, "\n", "\r", _, M).

/**
 * imprimir/1
 *
 * imprimir(M) imprime un mensaje en pantalla; seguidamente,
 * imprime un salto de lÃ­nea y hace flush_output para asegurar que
 * el orden de operaciones de I/O sea el esperado
 */
imprimir(M):-
    write_term(
        M,
        [
            portray(true),
            numbervars(true),
            quoted(false)
        ]
    ),
    nl,
    flush_output.

/**
 * imprimir_prompt/0
 *
 * imprimir_prompt muestra en pantalla una decoraciÃ³n de tipo
 * prompt para el usuario, ideal para ser utilizado justo antes de
 * solicitar input, ya que no imprime un salto de lÃ­nea
 */
imprimir_prompt:-
    write_term(
        "Yo:- ",
        [
            portray(false),
            numbervars(true),
            quoted(false)
        ]
    ),
    flush_output.

/**
 * separar_frase/2
 *
 * separar_frase(F, L) separa una string F por espacios o puntos y unifica
 * cada palabra hallada en la lista L
 */
separar_frase(F, L):-
	split_string(F, " ", " .,?!Â¿Â¡", L).

/**
 * es_palabra_de/2
 *
 * es_palabra_de(S, F) acierta si S es una palabra de la frase F, separada
 * por espacios; si no se pasa S, se unifica con alguna de las posibles
 * palabras de F.
 */
es_palabra_de(S, F):-
	separar_frase(F, L),
	member(S, L).

% ==========================================================================
% Parseo de temas de entrada
% ==========================================================================

/**
 * es_despedida/1
 *
 * es_despedida(M) acierta si la string M contiene alguna palabra
 * clave que identifice una despedida.
 */
es_despedida(M):-
	(
		es_palabra_de("adios", M); es_palabra_de("Adios", M);
		es_palabra_de("adiÃ³s", M); es_palabra_de("AdiÃ³s", M);
		es_palabra_de("chao", M); es_palabra_de("Chao", M);
		((es_palabra_de("hasta", M); es_palabra_de("Hasta", M)), es_palabra_de("luego", M));
		es_palabra_de("quit", M); es_palabra_de("Quit", M)
	).

/**
 * es_clima/1
 *
 * es_clima(M) acierta si la string M contiene alguna palabra
 * clave que identifique que habla sobre el clima
 */
es_clima(M):-
	(
		es_palabra_de("clima", M); es_palabra_de("Clima", M)
	).

/**
 * es_hoteles/1
 *
 * es_hoteles(M) acierta si la string M contiene alguna palabra
 * clave que identifique que habla sobre hoteles
 */
es_hoteles(M):-
	(
		es_palabra_de("hotel", M); es_palabra_de("Hotel", M);
		es_palabra_de("estadÃ­a", M); es_palabra_de("EstadÃ­a", M);
		es_palabra_de("alojamiento", M); es_palabra_de("Alojamiento", M);
		es_palabra_de("posada", M); es_palabra_de("Posada", M)
	).

/**
 * es_identidad/1
 *
 * es_identidad(M) acierta si la string M contiene alguna palabra
 * clave que identifique que habla sobre identidad del bot
 */
es_identidad(M):-
	(
		es_palabra_de("identidad", M); es_palabra_de("Identidad", M);
		es_palabra_de("eres", M); es_palabra_de("Eres", M);
		es_palabra_de("tÃº", M); es_palabra_de("TÃº", M);
		es_palabra_de("conocerte", M); es_palabra_de("Conocerte", M);
		es_palabra_de("ti", M); es_palabra_de("Ti", M)
	).

/**
 * es_popularidad/1
 *
 * es_popularidad(M) acierta si la string M contiene alguna palabra
 * clave que identifique que habla sobre popularidad de animÃ©
 */
es_popularidad(M):-
	(
		es_palabra_de("conocido", M); es_palabra_de("Conocido", M)
	).

/**
 * es_rating/1
 *
 * es_rating(M) acierta si la string M contiene alguna palabra
 * clave que identifique que habla sobre rating de animÃ©
 */
es_rating(M):-
	(
		es_palabra_de("bueno", M); es_palabra_de("Bueno", M);
		es_palabra_de("buenos", M); es_palabra_de("Buenos", M);
		es_palabra_de("malo", M); es_palabra_de("Malo", M);
		es_palabra_de("malos", M); es_palabra_de("Malos", M);
		es_palabra_de("regular", M); es_palabra_de("Regular", M);
		es_palabra_de("regulares", M); es_palabra_de("Regulares", M)
	).

/**
 * es_genero/1
 *
 * es_genero(M) acierta si la string M contiene alguna palabra clave
 * que identifique una consulta por gÃ©nero de anime
 */
es_genero(M):-
	es_palabra_de("gÃ©nero", M); es_palabra_de("GÃ©nero", M);
	es_palabra_de("gÃ©neros", M); es_palabra_de("GÃ©neros", M);
	es_palabra_de("genero", M); es_palabra_de("Genero", M);
	es_palabra_de("generos", M); es_palabra_de("Generos", M);
	es_palabra_de("gusta", M); es_palabra_de("Gusta", M);
	es_palabra_de("gustan", M); es_palabra_de("Gustan", M).

/**
 * es_genero_rating/1
 *
 * es_genero_rating(M) acierta si la string M contiene alguna palabra
 * clave que identifique que consulta sobre animÃ©s con cierto
 * rating en un gÃ©nero (o gÃ©neros)
 */
es_genero_rating(M):-
	(
		es_palabra_de("estrellas", M); es_palabra_de("Estrellas", M);
		es_palabra_de("estrella", M); es_palabra_de("Estrella", M)
	).

/**
 * es_agradecimiento/1
 *
 * es_agradecimiento(M) acierta si la string M contiene alguna palabra
 * clave que identifique que habla sobre agradecimiento por su labor
 */
es_agradecimiento(M):-
	(
		es_palabra_de("gracias", M); es_palabra_de("Gracias", M)
	).

/**
 * es_agregar/1
 * es_nuevo(M) acierta si el string M contiene alguna palabra
 * clave que indentifique que quiere agregar un nuevo anime.
 */
es_agregar(M) :-
	(
		es_palabra_de("agrega", M); es_palabra_de("Agrega", M);
		es_palabra_de("aÃ±ade", M); es_palabra_de("AÃ±ade", M);
		es_palabra_de("coloca", M); es_palabra_de("Coloca", M);
		es_palabra_de("recuerda", M); es_palabra_de("Recuerda", M);
		es_palabra_de("nuevo", M); es_palabra_de("Nuevo", M)
	).
/**
 * es_ayuda/1
 *
 * es_ayuda(M) acierta si la string M contiene alguna palabra
 * clave que identifique una solicitud de ayuda
 */
es_ayuda(M):-
	(
		es_palabra_de("ayuda", M); es_palabra_de("Ayuda", M);
		es_palabra_de("ayudame", M); es_palabra_de("Ayudame", M);
		es_palabra_de("ayÃºdame", M); es_palabra_de("AyÃºdame", M);
		es_palabra_de("help", M); es_palabra_de("Help", M)
	).

/**
 * es_saludo/1
 *
 * es_saludo(M) acierta si la string M contiene alguna palabra
 * clave que identifique que estÃ¡ saludando al bot
 */
es_saludo(M):-
	(
		es_palabra_de("hola", M); es_palabra_de("Hola", M);
		es_palabra_de("saludos", M); es_palabra_de("Saludos", M);
		((es_palabra_de("quÃ©", M); es_palabra_de("QuÃ©", M)), es_palabra_de("tal", M));
		((es_palabra_de("que", M); es_palabra_de("Que", M)), es_palabra_de("tal", M))
	).

/**
 * es_rating_alto_popularidad_baja/1
 *
 * es_rating_alto_popularidad_baja(M) acierta si la string M contiene alguna
 * palabra clave que identifique la consulta por animÃ© con popularidad baja
 * pero rating alto.
 */
es_rating_alto_popularidad_baja(M):-

	es_palabra_de("poco", M),
	(es_palabra_de("conocido", M); es_palabra_de("conocidos", M)),
	(
		es_palabra_de("bueno", M); es_palabra_de("buenos", M);
		es_palabra_de("interesante", M); es_palabra_de("interesantes", M)
	).

/**
 * es_consultar_anime_orden/1
 *
 * es_consultar_anime_orden(M) acierta si la string M contiene alguna
 * palabra clave que identifique la consulta por animÃ©s ordenados
 */
es_consultar_anime_orden(M):-
	es_palabra_de("consultar", M);
	es_palabra_de("conocer", M);
	es_palabra_de("saber", M);
	es_palabra_de("listar", M);
	es_palabra_de("consultar", M).

/**
 * obtener_tema/1
 *
 * Obtener_tema determina el tema de una frase M segÃºn su contenido.
 */
obtener_tema(M, "despedida"):- es_despedida(M), !.
obtener_tema(M, "agregar") :- es_agregar(M), !.
obtener_tema(M, "consultar-anime-orden"):- es_consultar_anime_orden(M), !.
obtener_tema(M, "rating-alto-popularidad-baja"):- es_rating_alto_popularidad_baja(M), !.
obtener_tema(M, "genero-rating"):- es_genero_rating(M), !.
obtener_tema(M, "popularidad"):- es_popularidad(M), !.
obtener_tema(M, "rating"):- es_rating(M), !.
obtener_tema(M, "genero"):- es_genero(M), !.
obtener_tema(M, "agradecimiento"):- es_agradecimiento(M), !.
obtener_tema(M, "clima"):- es_clima(M), !.
obtener_tema(M, "hoteles"):- es_hoteles(M), !.
obtener_tema(M, "identidad"):- es_identidad(M), !.
obtener_tema(M, "agradecimiento"):- es_agradecimiento(M), !.
obtener_tema(M, "ayuda"):- es_ayuda(M), !.
obtener_tema(_, "desconocido").
/**
 * tema_conversacional/1
 *
 * tema_conversacional(M) acierta si el tema M es conocido y considerado
 * un tema conversacional (genera una respuesta aleatoria no personalizada).
 */
tema_conversacional("despedida").
tema_conversacional("bienvenida").
tema_conversacional("clima").
tema_conversacional("hoteles").
tema_conversacional("identidad").
tema_conversacional("ayuda").
tema_conversacional("agradecimiento").
tema_conversacional("desconocido").

/**
 * existe_anime_con_num_rating/1
 *
 * existe_anime_con_num_rating(N) determina si existe algÃºn animÃ© cuya popularidad corresponda
 * al nÃºmero de N estrellas
 */
existe_anime_con_num_rating(X) :- anime_segun_rating(X, L), length(L, Tam), Tam > 0.

/**
 * existe_anime_con_num_popularidad/1
 *
 * existe_anime_con_num_popularidad(N), si recibe un nÃºmero N, determina si existe algÃºn animÃ©
 * con ese nÃºmero de popularidad
 */
existe_anime_con_num_popularidad(X) :- anime_segun_popularidad(X, L), length(L, Tam), Tam > 0.

/**
 * existe_anime_con_lista_popularidad/1
 *
 * existe_anime_con_lista_popularidad(L), si recibe una lista de nÃºmeros L, determina si existe algÃºn
 * animÃ© cuya popularidad sea alguno de los nÃºmeros en L.
 */
existe_anime_con_lista_popularidad([]) :- fail.
existe_anime_con_lista_popularidad([X | Xs]) :- existe_anime_con_num_popularidad(X); existe_anime_con_lista_popularidad(Xs).

/**
 * parsear_popularidad/2
 *
 * parsear_popularidad(M, P) determina quÃ© palabras clave en la frase M corresponden a
 * quÃ© tipo de valores de popularidad, entre 1 y 10, y unifica P con la lista de estos
 * valores de acuerdo a lo establecido en el enunciado.
 *
 * NOTA DE IMPLEMENTACIÃN: No se busca la palabra "conocido" puesto que la llamada a este
 * predicado se hace siempre habiendo previamente determinado que la palabra estÃ¡ en la frase,
 * asÃ­ reducimos la cantidad de bÃºsquedas en string.
 */
parsear_popularidad(M, P):- es_palabra_de("muy", M), es_palabra_de("poco", M), !, P = [1, 2].
parsear_popularidad(M, P):- es_palabra_de("muy", M), !, P = [8, 9].
parsear_popularidad(M, P):- es_palabra_de("poco", M), !, P = [3, 4, 5].
parsear_popularidad(M, P):- es_palabra_de("bastante", M), !, P = [10].
parsear_popularidad(_, P):- !, P = [6, 7].

/**
 * parsear_rating/2
 *
 * parsear_rating(M, P) determina quÃ© palabras clave en la frase M corresonden a quÃ©
 * nivel de rating (estrellas) de un animÃ©, entre 1 y 5, y unifica P con el valor
 * que corresponda, siguiendo el orden especificado en los detalles de implementaciÃ³n.
 */
parsear_rating(M, P):- es_palabra_de("muy", M), es_palabra_de("bueno", M), !, P = 5.
parsear_rating(M, P):- es_palabra_de("bueno", M), !, P = 4.
parsear_rating(M, P):- es_palabra_de("muy", M), es_palabra_de("malo", M), !, P = 1.
parsear_rating(M, P):- es_palabra_de("malo", M), !, P = 2.
parsear_rating(_, P):- !, P = 3.

/**
 * parsear_tipo_clasificacion/2
 *
 * parsear_tipo_clasificacion(M, O) determina bajo quÃ© criterios quiere ordenar el usuario
 * los anime que solicita; por defecto, se ordena solo por rating.
 */
parsear_tipo_clasificacion(M, "ambos") :- es_palabra_de("rating", M), es_palabra_de("popularidad", M), !.
parsear_tipo_clasificacion(M, "ambos") :- es_palabra_de("ambos", M), !.
parsear_tipo_clasificacion(M, "popularidad"):- es_palabra_de("popularidad", M), !.
parsear_tipo_clasificacion(_, "rating").

/**
 * parsear_orden/2
 *
 * parsear_orden(M, O) determina en quÃ© orden se debe mostrar una consulta segÃºn lo
 * solicitado en la frase, hallando la primera palabra entre mayor y menor en la frase
 * y asumiendo que ahÃ­ comienza su orden. Por defecto, se ordena de mayor a menor.
 */
parsear_orden(M, "menor"):-
	es_palabra_de("menor", M),
	es_palabra_de("mayor", M),
	separar_frase(M, L),
	nth0(I1, L, "menor"),
	nth0(I2, L, "mayor"),
	I1 < I2, !.
parsear_orden(_, "mayor").

/**
 * parsear_generos/2
 *
 * parsear_generos(M, G) determina quÃ© palabras de M corresponden a gÃ©neros de animÃ©
 * vÃ¡lidos y los unifica en una lista en G.
 */
parsear_generos(M, G):-
	separar_frase(M, F),
	findall(X, and(member(X, F), genero(X)), G).

/**
 * parsear_estrellas/2
 *
 * parsear_estrellas(M, N) ubica la palabra 'estrella' (o derivadas) en una frase y
 * retorna un casteo a entero de la palabra inmediatamente anterior.
 */
parsear_estrellas(M, N):-
	separar_frase(M, F),
	(
		nth0(I, F, "estrella"), !;
		nth0(I, F, "estrellas"), !;
		nth0(I, F, "Estrella"), !;
		nth0(I, F, "Estrellas", !)
	),
	I2 is I-1,
	I2 >= 0,
	nth0(I2, F, Ns),
	number_codes(N, Ns).

/**
 * parsear_popularidad_agregar/2
 *
 * parsear_popularidad_agregar(M, N) ubica la palabra 'popularidad' (o derivadas) en una frase y
 * retorna un casteo a entero de la palabra inmediatamente siguiente.
 */
parsear_popularidad_agregar(M, N):-
	separar_frase(M, F),
	(
		nth0(I, F, "popularidad"), !;
		nth0(I, F, "popular"), !
	),
	I2 is I+1,
	nth0(I2, F, Ns),
	number_codes(N, Ns).

/**
 * imprimir_sugerencias_de_anime/1
 *
 * imprimir_sugerencias_de_anime(L) recibe una lista de nombres de animÃ© e imprime frases
 * que corresponden a sugerencias con los datos de estos animÃ©.
 */
imprimir_sugerencias_de_anime([]).
imprimir_sugerencias_de_anime([X|Xs]):-
	rating(X, R),
	popularidad(X, P),
	ratingPopularidad(X, RP),
	obtener_mensaje_aleatorio("inicio_sugerencia_animÃ©", S0),
	string_concat(S0, X, S1),
	string_concat(S1, " que tiene un rating de ", S2),
	string_concat(S2, R, S3),
	string_concat(S3, " estrellas y una popularidad de ", S4),
	string_concat(S4, P, S5),
	string_concat(S5, " sobre 10 (sumados dan ", S6),
	string_concat(S6, RP, S7),
	string_concat(S7, ").", S),
	imprimir(S),
	imprimir_sugerencias_de_anime(Xs).

/**
 * imprimir_anime_por_popularidad/1
 *
 * imprimir_anime_por_popularidad(L) recibe una lista de enteros correspondientes a valores
 * de popularidad e imprime secuencialmente recomendaciones de animÃ© con esos valores,
 * incluyendo todos sus datos.
 */
imprimir_anime_por_popularidad([]).
imprimir_anime_por_popularidad([X|Xs]):-
	anime_segun_popularidad(X, L),
	imprimir_sugerencias_de_anime(L),
	imprimir_anime_por_popularidad(Xs).

/**
 * imprimir_anime_por_rating/1
 *
 * imprimir_anime_por_rating(L) recibe una lista de enteros correspondientes a valores
 * de estrellas de rating e imprime secuencialmente recomendaciones de animÃ© con esos
 * valores, incluyendo todos sus datos.
 */
imprimir_anime_por_rating(X):-
	anime_segun_rating(X, L),
	imprimir_sugerencias_de_anime(L).

/**
 * listar_por_popularidad_desde_mensaje/1
 *
 * listar_por_popularidad_desde_mensaje(M) recibe un string (frase) en M e imprime
 * todos los animÃ© cuya popularidad corresponda a lo solicitado en la frase M,
 * o un mensaje adecuado si no existe ninguno en la base de datos.
 */
listar_por_popularidad_desde_mensaje(M):-
	parsear_popularidad(M, L),
	(
		(
			existe_anime_con_lista_popularidad(L), !,
			imprimir("Yuki:- Ah, sÃ­, la popularidad. DÃ©jame ver quÃ© se me ocurre."),
			imprimir_anime_por_popularidad(L),
			imprimir("Yuki:- Eso es todo, humano.")
		);
		imprimir("Yuki:- AÃºn no conozco tantos animÃ© como para darte una respuesta. Â¿Me ayudas con eso?")
	),
	fail.

/**
 * es_nuevo_anime/2
 * es_nuevo_anime(M, P) es verdad si P es el tÃ­tulo del nuevo animÃ©
 */
es_nuevo_anime(M, P) :-
	separar_frase(M, L),
	parsear_anime(L, P).

/**
 * parsear_anime/2
 * parsear_anime(M, P) es verdad si P es un titulo de animÃ©
 * luego de la primera ocurrencia de
 * "agregar" o "Agregar".
 */
parsear_anime([Cabeza | Cola], P) :-
	% Cabeza \== "agrega",
	% Cabeza \== "Agrega",
	\+(es_agregar(Cabeza)),
	parsear_anime(Cola, P).

parsear_anime([Cabeza | Cola], P) :-
	% (Cabeza == "agrega"; Cabeza == "Agrega"),
	es_agregar(Cabeza),
	obtener_anime(Cola, P, 0).

/**
 * obtener_anime/2
 * obtener_anime(M, P) es verdad si P es el tÃ­tulo de un anime,
 * que serÃ¡ la primera subcadena de palabras capitalizadas.
 */

% Final de string
obtener_anime([], [], Parseando) :-
	Parseando is 1.

% si ya se terminÃ³ de parsear
obtener_anime([Cabeza | _], [], 1) :-
	cabeza_string(Cabeza, C),
	\+(es_mayuscula(C)).

% si aun no se ha empezado a parsear
obtener_anime([Cabeza | Cola], P, 0) :-
	cabeza_string(Cabeza, C),
	\+(es_mayuscula(C)),
	obtener_anime(Cola, P, 0).

obtener_anime([Cabeza | Cola], [H | T], _) :-
	cabeza_string(Cabeza, C),
	es_mayuscula(C),
	H = Cabeza,
	obtener_anime(Cola, T, 1).
/**
 * listar_por_rating_desde_mensaje/1
 *
 * listar_por_rating_desde_mensaje(M) recibe un string (frase) en M e imprime
 * todos los animÃ© cuyo rating corresponda a lo solicitado en la frase M,
 * o un mensaje adecuado si no existe ninguno en la base de datos.
 */
listar_por_rating_desde_mensaje(M):-
	parsear_rating(M, L),
	(
		(
			existe_anime_con_num_rating(L), !,
			imprimir("Yuki:- Â¿Por su rating? Creo que te puedo ayudar con eso, dÃ©jame pensar."),
			imprimir_anime_por_rating(L),
			imprimir("Yuki:- No tengo mÃ¡s que decirte. Acepta mis recomendaciones.")
		);
		imprimir("Yuki:- AÃºn no conozco tantos animÃ© como para darte una respuesta. Â¿Me ayudas con eso?")
	),
	fail.

/**
 * listar_rating_alto_popularidad_baja/0
 *
 * listar_rating_alto_popularidad_baja imprime en pantalla las sugerencias de animÃ©
 * que tengan rating alto (definido como ratings en el rango [4, 5], ambos inclusive) y
 * popularidad baja (definido como valores de popularidad en el rango [1, 4], ambos inclusive).
 */
listar_rating_alto_popularidad_baja:-
	anime_segun_popularidad(1, P1),
	anime_segun_popularidad(2, P2),
	anime_segun_popularidad(3, P3),
	anime_segun_popularidad(4, P4),
	list_to_set(P1, PS1),
	list_to_set(P2, PS2),
	list_to_set(P3, PS3),
	list_to_set(P4, PS4),
	anime_segun_rating(5, R1),
	anime_segun_rating(4, R2),
	list_to_set(R1, RS1),
	list_to_set(R2, RS2),
	union(PS1, PS2, PSU1),
	union(PSU1, PS3, PSU2),
	union(PSU2, PS4, PSU),
	union(RS1, RS2, RSU),
	intersection(PSU, RSU, L),
	imprimir("Yuki:- Ah, Â¿quieres ver de esas series que son super buenas pero no han sido vistas por tanta gente?"),
	imprimir_sugerencias_de_anime(L),
	imprimir("Yuki:- Tengo eso por ahora. Â¿QuÃ© opinas? Â¡MÃ­ralas y cuÃ©ntame luego!"),
	fail.

/**
 * filtrar_anime_genero/2
 *
 * filtrar_anime_genero(G, L), para una lista de gÃ©neros G, unifica en L todos los
 * animÃ© que pertenecen a al menos algÃºn gÃ©nero perteneciente a G.
 */
filtrar_anime_genero(G, L):-
	findall(X, and(generoAnime(X, G1), intersection(G1, G, Gi), length(Gi, Largo), Largo > 0), L).

/**
 * filtrar_lista_orden/3
 *
 * filtrar_lista_orden(L0, O, Lf), dado un orden O ("mayor" o "menor", por defecto asume "mayor"),
 * ordena los elementos de la lista L0 en el orden introducido, ASUMIENDO que la lista L0 a primeras
 * estÃ¡ ordenada de mayor a menor.
 */
filtrar_lista_orden(L0, "menor", Lf):- Lf = L0.
filtrar_lista_orden(L0, _, Lf):- reverse(L0, Lf).

/**
 * filtrar_lista_clasificacion/3
 *
 * filtrar_lista_clasificacion(L0, C, Lf) toma una lista inicial de animÃ©,
 * los ordena de mayor a menor segÃºn un criterio C y unifica la nueva lista
 * de orden en Lf.
 *
 * NOTA: Se crea un predicado por cada criterio de filtrado posible. Se asume
 * por defecto que el criterio es 'rating'.
 */
filtrar_lista_clasificacion(L0, "ambos", Lf):-
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(15, Lp15), member(X, Lp15)), L15),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(14, Lp14), member(X, Lp14)), L14),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(13, Lp13), member(X, Lp13)), L13),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(12, Lp12), member(X, Lp12)), L12),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(11, Lp11), member(X, Lp11)), L11),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(10, Lp10), member(X, Lp10)), L10),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(9, Lp9), member(X, Lp9)), L9),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(8, Lp8), member(X, Lp8)), L8),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(7, Lp7), member(X, Lp7)), L7),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(6, Lp6), member(X, Lp6)), L6),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(5, Lp5), member(X, Lp5)), L5),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(4, Lp4), member(X, Lp4)), L4),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(3, Lp3), member(X, Lp3)), L3),
	findall(X, and(member(X, L0), anime_segun_ratingPopularidad(2, Lp2), member(X, Lp2)), L2),
	append(L2, L3, LP1),
	append(LP1, L4, LP2),
	append(LP2, L5, LP3),
	append(LP3, L6, LP4),
	append(LP4, L7, LP5),
	append(LP5, L8, LP6),
	append(LP6, L9, LP7),
	append(LP7, L10, LP8),
	append(LP8, L11, LP9),
	append(LP9, L12, LP10),
	append(LP10, L13, LP11),
	append(LP11, L14, LP12),
	append(LP12, L15, Lf).
filtrar_lista_clasificacion(L0, "popularidad", Lf):-
	findall(X, and(member(X, L0), anime_segun_popularidad(10, Lp10), member(X, Lp10)), L10),
	findall(X, and(member(X, L0), anime_segun_popularidad(9, Lp9), member(X, Lp9)), L9),
	findall(X, and(member(X, L0), anime_segun_popularidad(8, Lp8), member(X, Lp8)), L8),
	findall(X, and(member(X, L0), anime_segun_popularidad(7, Lp7), member(X, Lp7)), L7),
	findall(X, and(member(X, L0), anime_segun_popularidad(6, Lp6), member(X, Lp6)), L6),
	findall(X, and(member(X, L0), anime_segun_popularidad(5, Lp5), member(X, Lp5)), L5),
	findall(X, and(member(X, L0), anime_segun_popularidad(4, Lp4), member(X, Lp4)), L4),
	findall(X, and(member(X, L0), anime_segun_popularidad(3, Lp3), member(X, Lp3)), L3),
	findall(X, and(member(X, L0), anime_segun_popularidad(2, Lp2), member(X, Lp2)), L2),
	findall(X, and(member(X, L0), anime_segun_popularidad(1, Lp1), member(X, Lp1)), L1),
	append(L1, L2, LP),
	append(LP, L3, LP2),
	append(LP2, L4, LP3),
	append(LP3, L5, LP4),
	append(LP4, L6, LP5),
	append(LP5, L7, LP6),
	append(LP6, L8, LP7),
	append(LP7, L9, LP8),
	append(LP8, L10, Lf).
filtrar_lista_clasificacion(L0, _, Lf):-
	findall(X, and(member(X, L0), anime_segun_rating(5, Lp5), member(X, Lp5)), L5),
	findall(X, and(member(X, L0), anime_segun_rating(4, Lp4), member(X, Lp4)), L4),
	findall(X, and(member(X, L0), anime_segun_rating(3, Lp3), member(X, Lp3)), L3),
	findall(X, and(member(X, L0), anime_segun_rating(2, Lp2), member(X, Lp2)), L2),
	findall(X, and(member(X, L0), anime_segun_rating(1, Lp1), member(X, Lp1)), L1),
	append(L1, L2, LP),
	append(LP, L3, LP2),
	append(LP2, L4, LP3),
	append(LP3, L5, Lf).

/**
 * consultar_anime_por_orden/1
 *
 * consultar_anime_por_orden(M) interpreta la frase M como una consulta de animÃ©
 * por gÃ©neros, segÃºn un criterio de clasificaciÃ³n y con un orden dado (por defecto,
 * el criterio es 'rating' y el orden de 'mayor' a menor), y muestra las sugerencias
 * en pantalla.
 */
consultar_anime_por_orden(M):-
	parsear_generos(M, G),
	parsear_tipo_clasificacion(M, T),
	parsear_orden(M, O),
	imprimir("Yuki:- Voy a poner todo el poder de procesamiento que tengo para responderte."),
	filtrar_anime_genero(G, L1), !,
	filtrar_lista_clasificacion(L1, T, L2), !,
	filtrar_lista_orden(L2, O, Lf), !,
	length(Lf, Tam), !,
	(
		(
			Tam > 0,
			imprimir_sugerencias_de_anime(Lf),
			imprimir("Yuki:- Â¿QuÃ© tal te parecen mis sugerencias?")
		);
		(
			Tam == 0,
			imprimir("Yuki:- No encontrÃ© animÃ© con tus filtros de bÃºsqueda. Â¿Me ayudas con eso?")
		)
	),
	fail.

/**
 * listar_por_genero/1
 *
 * listar_por_genero(M) interpreta en la frase M uno o varios gÃ©neros de animÃ©, halla
 * los animÃ© que pertenezcan a alguno de estos gÃ©neros (de manera inclusiva, basta con que
 * pertenezca a uno de ellos para ser considerado) y los imprime como sugerencias.
 */
listar_por_genero(M):-
	imprimir("Yuki:- Veamos quÃ© puedo hacer por ti. Si me quieres ayudar, Â¡alza tus manos al cielo!"),
	parsear_generos(M, G), !,
	filtrar_anime_genero(G, Lf),
	length(Lf, Tam), !,
	(
		(
			Tam > 0,
			imprimir_sugerencias_de_anime(Lf),
			imprimir("Yuki:- Â¡Pero no te encasilles en unos pocos gÃ©neros, abre tu mente!")
		);
		(
			Tam == 0,
			imprimir("Yuki:- No encontrÃ© animÃ© con tus filtros de bÃºsqueda. Â¿Me ayudas con eso?")
		)
	),
	fail.

/**
 * consultar_anime_por_genero_y_rating/1
 *
 * consultar_anime_por_genero_y_rating(M) interpreta en la frase M uno o varios gÃ©neros
 * de animÃ© y un valor de estrellas de rating, halla los animÃ© que pertenezcan a alguno de estos gÃ©neros
 * (de manera inclusiva, basta con pertenezca a uno de ellos para ser considerado) y que, ademÃ¡s, cuente
 * con la cantidad de estrellas dada, y los imprime como sugerencias.
 */
consultar_anime_por_genero_y_rating(M):-
	imprimir("Yuki:- Oh, comprendo. DÃ©jame ver quÃ© puedo responderte, un momento. *sonidos de modem de CANTV*"),
	parsear_generos(M, G), !,
	parsear_estrellas(M, E), !,
	filtrar_anime_genero(G, L1),
	findall(X, and(member(X, L1), anime_segun_rating(E, LR), member(X, LR)), Lf),
	length(Lf, Tam), !,
	(
		(
			Tam > 0,
			imprimir_sugerencias_de_anime(Lf),
			imprimir("Yuki:- Â¡OjalÃ¡ esto te sirva para que conozcas series nuevas!")
		);
		(
			Tam == 0,
			imprimir("Yuki:- No encontrÃ© animÃ© con tus filtros de bÃºsqueda. Â¿Me ayudas con eso?")
		)
	),
	fail.

% ==========================================================================
% Funciones auxiliares de conversaciÃ³n del bot
% ==========================================================================

/**
 * dar_bienvenida/0
 *
 * dar_bienvenida muestra en pantalla un mensaje de bienvenida
 * escogido aleatoriamente entre los mensajes existentes.
 */
dar_bienvenida:-
    obtener_mensaje_aleatorio("bienvenida", M),
    imprimir(M).

/**
 * reponder/1
 *
 * responder(M) determina si M es un mensaje apropiado de un
 * tema conocido por el bot, responde la entrada dada y, en caso de
 * ser una despedida, termina la ejecuciÃ³n; en cas contrario, falla
 * (para saltar al prÃ³ximo predicado)
 */
responder(M):-
    obtener_tema(M, T), !,
    (
	(tema_conversacional(T), obtener_mensaje_aleatorio(T, D), imprimir(D));
	(not(tema_conversacional(T)))
    ),
    (
		(
			T == "agregar",
			es_nuevo_anime(M, Titulo),
			parsear_generos(M, Generos),
			parsear_estrellas(M, Rating),
			% Agregamos el animÃ©
			insertar_espacios(Titulo, TituloString),

			assertz(anime(TituloString)),
			assertz(generoAnime(TituloString, Generos)),
			assertz(rating(TituloString, Rating)),

			(
				(
					es_palabra_de("popularidad", M),
					parsear_popularidad_agregar(M, N),
					assertz(popularidad(TituloString, N))
				);
				not(es_palabra_de("popularidad", M)), assertz(popularidad(TituloString, 1))
			), !,

			string_concat("Yuki:- Okay, ahora recordarÃ© ", TituloString, Respuesta),
			imprimir(Respuesta),
			fail
		);
		(T == "consultar-anime-orden", consultar_anime_por_orden(M));
		(T == "rating-alto-popularidad-baja", listar_rating_alto_popularidad_baja);
		(T == "genero-rating", consultar_anime_por_genero_y_rating(M));
		(T == "popularidad", listar_por_popularidad_desde_mensaje(M));
		(T == "rating", listar_por_rating_desde_mensaje(M));
		(T == "genero", listar_por_genero(M));
	(T == "despedida", halt);
	(T == "desconocido",
	 string_concat("Yuki:- No entendÃ­ esto: ", M, Mf),
	 imprimir(Mf),
	 fail
	)
    ).

% ==========================================================================
% Funciones principales del chat
% ==========================================================================

/**
 * conversar/0
 *
 * conversar repite en un ciclo infinito (por backtracking) una lÃ³gica sencilla
 * de conversaciÃ³n bilateral: se lee un mensaje del usuario y se responde por
 * parte del bot.
 */
conversar:-
    repeat,
    imprimir_prompt, % mostramos un prompt decorativo
    leer(M), % leemos la entrada del usuario
    responder(M). % ejecutamos una acciÃ³n de acuerdo a lo solicitado
    % NOTA: reponder/1 termina la ejecuciÃ³n, o falla y asegura el backtracking

/**
 * chat/0
 *
 * chat muestra un mensaje de bienvenida en pantalla e inicia
 * el ciclo de la conversaciÃ³n con el bot
 */
chat:-
    dar_bienvenida,
    conversar.
