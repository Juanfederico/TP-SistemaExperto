(deftemplate materia
        (field nombre)
        (field profesor)
        (field cuatrimestre)
)

(deftemplate rama
        (field numero)
        (field nombre)
        (field descripcion)
)


(defrule seleccion_materias ""
        =>
        (printout t "Seleccione su materia preferida del primer cuatrimestre:" crlf) 
                (printout t "   1 - Programacion de computadoras" crlf)
                (printout t "   2 - Organizacion de computadoras" crlf)
                (printout t "   3 - Matematica 1" crlf)
                (printout t "   4 - Expresion de problemas y algoritmos" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Programacion de computadoras") (profesor "Jorge Golfieri") (cuatrimestre 1))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Organizacion de computadoras") (profesor "Roberto Garcia") (cuatrimestre 1))))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Matematica 1") (profesor "Jose Vazquez") (cuatrimestre 1))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Expresion de problemas y algoritmos") (profesor "Norberto Charczuk") (cuatrimestre 1))))

        (printout t "Seleccione su materia preferida del segundo cuatrimestre:" crlf)         
                (printout t "   1 - Arquitectura de computadoras" crlf)
                (printout t "   2 - Matematica 2" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Arquitectura de computadoras") (profesor "Roberto Garcia") (cuatrimestre 2))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Matematica 2") (profesor "Jose Vazquez") (cuatrimestre 2))))

        (printout t "Seleccione su materia proferida del tercer cuatrimestre:" crlf)         
                (printout t "   1 - Ingenieria de Software 1 " crlf)
                (printout t "   2 - Introduccion a las bases de datos" crlf)
                (printout t "   3 - Algoritmos y estructuras de datos" crlf)
                (printout t "   4 - Matematica 3" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Ingenieria de Software 1") (profesor "Hernan Amatriain") (cuatrimestre 3))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Introduccion a las bases de datos") (profesor "Federico Ribeiro") (cuatrimestre 3))))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Algoritmos y estructuras de datos") (profesor "Diego Azcurra") (cuatrimestre 3))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Matematica 3") (profesor "Jose Vazquez") (cuatrimestre 3))))

        (printout t "Seleccione su materia preferida del cuarto cuatrimestre:" crlf)         
                (printout t "   1 - Orientacion a objetos 1" crlf)
                (printout t "   2 - Seminario de lenguajes" crlf)
                (printout t "   3 - Introduccion a los sistemas operativos" crlf)
                (printout t "   4 - Probabilidad y estadistica" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Orientacion a objetos 1") (profesor "Alejandra Vranic") (cuatrimestre 4))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Seminario de lenguajes") (profesor "Hernan Merlino") (cuatrimestre 4))))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Introduccion a los sistemas operativos") (profesor "Pablo Pytel") (cuatrimestre 4))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Probabilidad y estadistica") (profesor "Edgardo Di Dio") (cuatrimestre 4))))
)

(defrule predileccion_desarrollo ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        =>
        (printout t "Su rama predilecta es: Desarrollo" crlf)
)