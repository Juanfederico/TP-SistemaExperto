(deftemplate estudiante
        (field nombre)
        (field parcial1)
        (field parcial2)
        (field final)
)

(deftemplate cursada
        (field estudiante)
        (field nota)
        (field estado)
)

(deftemplate materia
        (field estudiante)
        (field nota)
        (field estado)
)


(defrule aprobacion-cursada
        (estudiante (nombre ?nombre) (parcial1 ?parcial1) (parcial2 ?parcial2))
        
        (test (>= ?parcial1 4))
        (test (>= ?parcial2 4))
        (test (< (+ ?parcial1 ?parcial2) 14))
       
        =>
       
        (assert (cursada (estudiante ?nombre) (nota (/ (+ ?parcial1 ?parcial2) 2)) (estado aprobada)))
)


(defrule desaprobacion-cursada
        (estudiante (nombre ?nombre) (parcial1 ?parcial1) (parcial2 ?parcial2))
        (or (test (< ?parcial1 4)) (test (< ?parcial2 4)))
        =>
        (assert (cursada (estudiante ?nombre) (nota (/ (+ ?parcial1 ?parcial2) 2)) (estado desaprobada)))
)


(defrule promocion-cursada
        (estudiante (nombre ?nombre) (parcial1 ?parcial1) (parcial2 ?parcial2))
        (test (>= (+ ?parcial1 ?parcial2) 14))
        =>
        (assert (cursada (estudiante ?nombre) (nota (/ (+ ?parcial1 ?parcial2) 2)) (estado promocionada)))
)


(defrule aprobacion-materia
        (cursada (estudiante ?nombre) (nota ?cursada) (estado aprobada))
        (estudiante (nombre ?nombre) (final ?final))
        (test (>= (/ (+ ?cursada ?final) 2) 4))
        =>
        (assert (materia (estudiante ?nombre) (nota (/ (+ ?cursada ?final) 2)) (estado aprobada)))
)


(defrule aprobacion-materia-promocion
        (cursada (estudiante ?nombre) (nota ?cursada) (estado promocionada))
        =>
        (assert (materia (estudiante ?nombre) (nota ?cursada) (estado aprobada)))
)



(deffacts hechos-iniciales
        (estudiante (nombre "NahuelR") (parcial1 5) (parcial2 4) (final 5))
        (estudiante (nombre "LeoM") (parcial1 7) (parcial2 7) (final 10))
        (estudiante (nombre "LeoR") (parcial1 9) (parcial2 5))
        (estudiante (nombre "Juan") (parcial1 10) (parcial2 3))
        (estudiante (nombre "Carina") (parcial1 3) (parcial2 2))
)



;estudiante: nombre parcial1 parcial2 final
(defrule datos_estudiante ""
        =>
        (printout t "ingresa el nombre del estudiante: ")
        (bind ?nombreEstudiante (readline))
        (printout t "ingresaste:")
        (printout t ?nombreEstudiante crlf)
        
        (printout t "ingresa la nota del primer parcial: ")
        (bind ?parcial1 (read))
        (printout t "ingresaste:")
        (printout t ?parcial1 crlf)
        
        (printout t "ingresa la nota del segundo parcial: ")
        (bind ?parcial2 (read))
        (printout t "ingresaste:")
        (printout t ?parcial2 crlf)

        (assert (estudiante (nombre ?nombreEstudiante)(parcial1 ?parcial1)(parcial2 ?parcial2)))
)