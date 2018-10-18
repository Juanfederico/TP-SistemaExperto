;Por defecto el jugador 1 va a ser el que toma las decisiones
(deftemplate jugador
        (slot numjugador (type INTEGER))
        (multislot nombre (type STRING))
)

(deftemplate carta
        (slot numjugador (type INTEGER)) ;numero de jugador al que pertenece la carta
        (multislot palo) ;(allowed-strings "corazon" "picas" "diamante" "trebol"))
        (multislot valor)
)

(defrule definir-palo
        ?carta <- (carta (palo ?palo))
        (test (eq (type ?palo) INTEGER))
        =>
        (if (= ?palo 1) then
                (modify ?carta (palo "corazon")))
        (if (= ?palo 2) then
                (modify ?carta (palo "picas")))
        (if (= ?palo 3) then
                (modify ?carta (palo "diamante")))
        (if (= ?palo 4) then
                (modify ?carta (palo "trebol")))

)

(defrule definir-valor
        ?carta <- (carta (numjugador ?numjugador)(palo ?palo)(valor ?valor) )
        (test(eq (type ?valor) INTEGER))
        =>
        (if (= ?valor 11) then
                (modify ?carta (numjugador ?numjugador)(palo ?palo)(valor "J")))
        (if (= ?valor 12) then
                (modify ?carta (numjugador ?numjugador)(palo ?palo)(valor "Q")))
        (if (= ?valor 13) then
                (modify ?carta (numjugador ?numjugador)(palo ?palo)(valor "K")))
        (if (= ?valor 14) then
                (modify ?carta (numjugador ?numjugador)(palo ?palo)(valor "A")))
)

;Definiendo datos del jugador 1
;Se le da el numero de jugador 1 y el nombre indicado por teclado
;Se simula el reparto de cartas de la siguiente manera:
;Palo: 1="corazon", 2="picas", 3="diamante", 4="trebol"
;Valor: 2-10=comun, 11="J", 12="Q", 13="K", 14="A"

(defrule datos_jugadores ""
        (declare (salience 10))
        =>
        (printout t "Introduzca el nombre: ")
        (bind ?nombre_jugador (readline))
        (printout t ?nombre_jugador crlf)
        ;Declarando jugador1 con sus cartas
        (assert(jugador(numjugador 1)(nombre ?nombre_jugador)) 
                (carta (numjugador 1)(palo (random 1 4)) (valor (random 2 14))) 
                (carta (numjugador 1)(palo (random 1 4)) (valor (random 2 14)))
        )
        ;Declarando jugador2 (la computadora que va a jugar contra el usuario)
        (assert(jugador(numjugador 2)(nombre "Computadora")) 
                (carta (numjugador 2)(palo (random 1 4)) (valor (random 2 14))) 
                (carta (numjugador 2)(palo (random 1 4)) (valor (random 2 14)))
        )
)

(defrule preflop ""
        (declare (salience 10))
        =>
        (printout t "Computadora - Ciega grande: 200 fichas" crlf)
        (printout t "Vos - Ciega grande: 100 fichas" crlf)
        (printout t "Selecciona una accion (P=Pagar, S=Subir): " crlf)
        (bind ?accion (readline))
        (printout t ?nombre_jugador crlf)
)