(deftemplate persona
(multislot nombre (type STRING))
(slot edad (type INTEGER) (default 0)))

(deffacts mis-hechos
	(persona (nombre "luis") (edad 33))
	(persona (nombre "pepe") (edad 20))
	(persona (nombre "agustin") (edad 14))
)

(defrule prohibir-nombre
	?persona <- (persona (nombre "juan"))
	=>
	(printout t "Cambios no aplicados: no puede llamarse juan" crlf)
	(retract ?persona)
)

(defrule prohibir-mayor-18
	?persona <-(persona(nombre ?nom)(edad ?ed))
	(test (>= ?ed 18))
	=>
	(printout t "Aplicado en " ?nom " con edad " ?ed crlf)
	(printout t "Cambios no aplicados: no puede tener mas de 18" crlf)
	(retract ?persona)
)

(defrule datos_persona ""
	(declare (salience 10))
	=>
	(printout t "Introduzca el nombre: ")
	(bind ?nombre_persona (readline))
	(printout t ?nombre_persona crlf)
	(printout t "Introduzca la edad: ")
	(bind ?edad_persona (read))
	(assert (persona (nombre ?nombre_persona)(edad ?edad_persona)))
)