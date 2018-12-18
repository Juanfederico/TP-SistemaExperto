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
                (printout t "   2 - Introduccion a las Bases de Datos" crlf)
                (printout t "   3 - Algoritmos y estructuras de datos" crlf)
                (printout t "   4 - Matematica 3" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Ingenieria de Software 1") (profesor "Hernan Amatriain") (cuatrimestre 3))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Introduccion a las Bases de Datos") (profesor "Federico Ribeiro") (cuatrimestre 3))))
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

        (printout t "Seleccione su materia preferida del quinto cuatrimestre:" crlf)         
                (printout t "   1 - Programacion concurrente" crlf)
                (printout t "   2 - Ingenieria de Software 2" crlf)
                (printout t "   3 - Orientacion a objetos 2" crlf)
                (printout t "   4 - Conceptos y paradigmas de lenguajes de programacion" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Programacion concurrente") (profesor "Hernan Merlino") (cuatrimestre 5))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Ingenieria de Software 2") (profesor "Eduardo Diez") (cuatrimestre 5) )))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Orientacion a objetos 2") (profesor "Alejandra Vranic") (cuatrimestre 5))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Conceptos y paradigmas de lenguajes de programacion") (profesor "Hernan Merlino") (cuatrimestre 5))))

        (printout t "Seleccione su materia preferida del sexto cuatrimestre:" crlf)         
                (printout t "   1 - Sistemas y organizaciones" crlf)
                (printout t "   2 - Bases de Datos 1" crlf)
                (printout t "   3 - Proyecto de Software" crlf)
                (printout t "   4 - Redes y comunicaciones" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Sistemas y organizaciones") (profesor "Ricardo Lelli") (cuatrimestre 6))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Bases de Datos 1") (profesor "Federico Ribeiro") (cuatrimestre 6) )))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Proyecto de Software") (profesor "Dario Rodriguez") (cuatrimestre 6))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Redes y comunicaciones") (profesor "Diego Azcurra") (cuatrimestre 6))))

        (printout t "Seleccione su materia preferida del septimo cuatrimestre:" crlf)         
                (printout t "   1 - Ingenieria de Software 3" crlf)
                (printout t "   2 - Bases de Datos 2" crlf)
                (printout t "   3 - Sistemas operativos" crlf)
                (printout t "   4 - Matematica discreta" crlf)
                (printout t "   5 - Espacios virtuales de trabajo colaborativo" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Ingenieria de Software 3") (profesor "Sebastian Martins") (cuatrimestre 7))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Bases de Datos 2") (profesor "Federico Ribeiro") (cuatrimestre 7))))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Sistemas operativos") (profesor "Pablo Pytel") (cuatrimestre 7))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Matematica discreta") (profesor "Laura Loidi") (cuatrimestre 7))))
        (if (= ?materiaElegida 5) then (assert (materia (nombre "Espacios virtuales de trabajo colaborativo") (profesor "Dario Rodriguez") (cuatrimestre 7) )))

        (printout t "Seleccione su materia preferida del octavo cuatrimestre:" crlf)         
                (printout t "   1 - Fundamentos de teoria de la computacion" crlf)
                (printout t "   2 - Desarrollo de Software en Sistemas Distribuidos" crlf)
                (printout t "   3 - Sistemas basados en conocimiento" crlf)
                (printout t "   4 - Sistemas embebidos" crlf)
                (printout t "   5 - Prueba de Software" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Fundamentos de teoria de la computacion") (profesor "Hernan Amatriain") (cuatrimestre 8))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Desarrollo de Software en Sistemas Distribuidos") (profesor "Diego Azcurra") (cuatrimestre 8))))
        (if (= ?materiaElegida 3) then (assert (materia (nombre "Sistemas basados en conocimiento") (profesor "Hernan Amatriain") (cuatrimestre 8))))
        (if (= ?materiaElegida 4) then (assert (materia (nombre "Sistemas embebidos") (profesor "Diego Azcurra") (cuatrimestre 8))))
        (if (= ?materiaElegida 5) then (assert (materia (nombre "Prueba de Software") (profesor "Eduardo Diez") (cuatrimestre 8))))

        (printout t "Seleccione su materia preferida del noveno cuatrimestre:" crlf)         
                (printout t "   1 - Politica y gestion de la ciencia" crlf)
                (printout t "   2 - Aspectos legales y profesionales de la informatica" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Politica y gestion de la ciencia") (profesor "Ricardo Lelli") (cuatrimestre 9))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Aspectos legales y profesionales de la informatica") (profesor "Antonio Martino") (cuatrimestre 9))))

        (printout t "Seleccione su materia preferida del decimo cuatrimestre:" crlf)         
                (printout t "   1 - Ingenieria de Software empirica" crlf)
                (printout t "   2 - Explotacion de informacion" crlf)
                (bind ?materiaElegida (read))
                (printout t "ingresaste:") (printout t ?materiaElegida crlf)

        (if (= ?materiaElegida 1) then (assert (materia (nombre "Ingenieria de Software empirica") (profesor "Hernan Amatriain") (cuatrimestre 10))))
        (if (= ?materiaElegida 2) then (assert (materia (nombre "Explotacion de informacion") (profesor "Sebastian Martins") (cuatrimestre 10))))
)

;----------------------------------------------DESARROLLO----------------------------------------------

(defrule predileccion_desarrollo_1 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Orientacion a objetos 1")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_2 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_3 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Orientacion a objetos 1")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_4 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Orientacion a objetos 1")))
        (exists (materia (nombre "Conceptos y paradigmas de lenguajes de programacion")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_5 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Orientacion a objetos 1")))
        (exists (materia (nombre "Programacion concurrente")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)
;cambiada
(defrule predileccion_desarrollo_6 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Introduccion a los sistemas operativos")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)
;cambiada
(defrule predileccion_desarrollo_7 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)



(defrule predileccion_desarrollo_8 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_9 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_10 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        (exists (materia (nombre "Proyecto de Software")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_11 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Programacion concurrente")))
        (exists (materia (nombre "Explotacion de informacion")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_12 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Conceptos y paradigmas de lenguajes de programacion")))
        (exists (materia (nombre "Explotacion de informacion")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_13 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Programacion concurrente")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_14 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Conceptos y paradigmas de lenguajes de programacion")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_15 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Programacion concurrente")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

(defrule predileccion_desarrollo_16 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Seminario de lenguajes")))
        (exists (materia (nombre "Conceptos y paradigmas de lenguajes de programacion")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        =>
        (assert (rama (numero 1) (nombre "Desarrollo de Software") (descripcion "Tecnologias de programacion, analisis y desarrollo de algoritmos")))
)

;----------------------------------------------CIENCIAS EXACTAS----------------------------------------------

(defrule predileccion_ciencias_exactas_1 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Matematica discreta")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_2 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_3 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Bases de Datos 2")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_4 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Sistemas operativos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_5 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_6 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_7 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_8 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)


(defrule predileccion_ciencias_exactas_9 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Desarrollo de Software en Sistemas Distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_10 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_11 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_12 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_13 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Prueba de Software")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_14 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Prueba de Software")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_15 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Prueba de Software")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_16 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_17 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_18 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_19 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_20 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_21 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_22 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_23 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_24 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_25 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_26 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Introduccion a las Bases de Datos")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_27 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_28 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Desarrollo de Software en Sitemas Distribuidos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_29 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Desarrollo de Software en Sitemas Distribuidos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_30 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Desarrollo de Software en Sitemas Distribuidos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_31 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_32 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_33 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_34 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_35 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_36 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)

(defrule predileccion_ciencias_exactas_37 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)
;cambiada
(defrule predileccion_ciencias_exactas_38 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)
;cambiada
(defrule predileccion_ciencias_exactas_39 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Probabilidad y estadistica")))
        (exists (materia (nombre "Matematica discreta")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 2) (nombre "Ciencias exactas") (descripcion "Calculo, razonamiento numerico y logica de bajo nivel")))
)


;----------------------------------------------HARDWARE----------------------------------------------

(defrule predileccion_hardware_1 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_2 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_3 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_4 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Arquitectura de computadoras")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_5 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Introduccion a los sistemas operativos")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_6 ""
        (exists (materia (nombre "Organizacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Sistemas operativos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_7 ""
        (exists (materia (nombre "Programacion de computadoras")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Introduccion a los sistemas operativos")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_8 ""
        (exists (materia (nombre "Expresion de problemas y algoritmos")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Introduccion a los sistemas operativos")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

(defrule predileccion_hardware_9 ""
        (exists (materia (nombre "Matematica 1")))
        (exists (materia (nombre "Matematica 2")))
        (exists (materia (nombre "Introduccion a los sistemas operativos")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Sistemas operativos")))
        (exists (materia (nombre "Sistemas embebidos")))
        =>
        (assert (rama (numero 3) (nombre "Hardware") (descripcion "Componentes fisicos y de bajo nivel relacionados con los ordenadores")))
)

;----------------------------------------------BASES DE DATOS----------------------------------------------

(defrule predileccion_bases_de_datos_1 ""
        (exists (materia (nombre "Introduccion a las Bases de Datos")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Bases de Datos 2")))
        =>
        (assert (rama (numero 4) (nombre "Bases de Datos") (descripcion "Analisis, almacenamiento y tratamiento de los datos en los sistemas")))
)

(defrule predileccion_bases_de_datos_2 ""
        (exists (materia (nombre "Introduccion a las Bases de Datos")))
        (exists (materia (nombre "Orientacion a objetos 2")))
        (exists (materia (nombre "Bases de Datos 2")))
        (exists (materia (nombre "Explotacion de informacion")))
        =>
        (assert (rama (numero 4) (nombre "Bases de Datos") (descripcion "Analisis, almacenamiento y tratamiento de los datos en los sistemas")))
)

(defrule predileccion_bases_de_datos_3 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Bases de Datos 2")))
        (exists (materia (nombre "Explotacion de informacion")))
        =>
        (assert (rama (numero 4) (nombre "Bases de Datos") (descripcion "Analisis, almacenamiento y tratamiento de los datos en los sistemas")))
)

(defrule predileccion_bases_de_datos_4 ""
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Bases de Datos 2")))
        (exists (materia (nombre "Explotacion de informacion")))
        =>
        (assert (rama (numero 4) (nombre "Bases de Datos") (descripcion "Analisis, almacenamiento y tratamiento de los datos en los sistemas")))
)

(defrule predileccion_bases_de_datos_5 ""
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Bases de Datos 2")))
        (exists (materia (nombre "Explotacion de informacion")))
        =>
        (assert (rama (numero 4) (nombre "Bases de Datos") (descripcion "Analisis, almacenamiento y tratamiento de los datos en los sistemas")))
)

;----------------------------------------------INTELIGENCIA ARTIFICIAL----------------------------------------------

(defrule predileccion_inteligencia_artificial_1 ""
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Sistemas basados en conocimiento")))
        =>
        (assert (rama (numero 5) (nombre "Inteligencia artificial") (descripcion "Algoritmos de aprendizaje y razonamiento automatizado")))
)

(defrule predileccion_inteligencia_artificial_2 ""
        (exists (materia (nombre "Conceptos y paradigmas de lenguajes de programacion")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        =>
        (assert (rama (numero 5) (nombre "Inteligencia artificial") (descripcion "Algoritmos de aprendizaje y razonamiento automatizado")))
)

;----------------------------------------------GESTION DE PROYECTOS----------------------------------------------

(defrule predileccion_gestion_1 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Proyecto de Software")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_2 ""
        (exists (materia (nombre "Algoritmos y estructuras de datos")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Proyecto de Software")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_3 ""
        (exists (materia (nombre "Introduccion a las Bases de Datos")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Proyecto de Software")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_4 ""
        (exists (materia (nombre "Matematica 3")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Proyecto de Software")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_5 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Proyecto de Software")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Prueba de Software")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_6 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Sistemas y Organizaciones")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_7 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_8 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_9 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Sistemas y organizaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_10 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_11 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Prueba de Software")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_12 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_13 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Desarollo de Software en sistemas distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_14 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_15 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_16 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Desarrollo de Software en sistemas distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_17 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Ingenieria de Software 3")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_18 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Desarrollo de Software en sistemas distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_19 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_20 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Bases de Datos 1")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_21 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_22 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_23 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Redes y comunicaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Desarrollo de Software en sistemas distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_24 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Sistemas y organizaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Desarrollo de Software en sistemas distribuidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_25 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Sistemas y organizaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Fundamentos de teoria de la computacion")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

(defrule predileccion_gestion_26 ""
        (exists (materia (nombre "Ingenieria de Software 1")))
        (exists (materia (nombre "Ingenieria de Software 2")))
        (exists (materia (nombre "Sistemas y organizaciones")))
        (exists (materia (nombre "Espacios virtuales de trabajo colaborativo")))
        (exists (materia (nombre "Sistemas embebidos")))
        (exists (materia (nombre "Ingenieria de Software empirica")))
        =>
        (assert (rama (numero 6) (nombre "Gestion de proyectos") (descripcion "Planificacion, orientacion y seguimiento de proyectos de principio a fin")))
)

;----------------------------------------------DISPARADOR DE ORIENTACIONES----------------------------------------------

(defrule orientacion_desarrollo ""
        (exists (rama (nombre "Desarrollo de Software")))
        =>
        (printout t "Su rama predilecta es: Desarrollo de Software" crlf)
)

(defrule orientacion_ciencias_exactas ""
        (exists (rama (nombre "Ciencias exactas")))
        =>
        (printout t "Su rama predilecta es: Ciencias exactas" crlf)
)

(defrule orientacion_hardware ""
        (exists (rama (nombre "Hardware")))
        =>
        (printout t "Su rama predilecta es: Hardware" crlf)
)

(defrule orientacion_bases_de_datos ""
        (exists (rama (nombre "Bases de Datos")))
        =>
        (printout t "Su rama predilecta es: Bases de Datos" crlf)
)

(defrule orientacion_inteligencia_artificial ""
        (exists (rama (nombre "Inteligencia artificial")))
        =>
        (printout t "Su rama predilecta es: Inteligencia artificial" crlf)
)

(defrule orientacion_gestion ""
        (exists (rama (nombre "Gestion de proyectos")))
        =>
        (printout t "Su rama predilecta es: Gestion de proyectos" crlf)
)

(defrule orientacion_inconclusa ""
        (exists (materia))
        (not (rama))
        =>
        (printout t "No posee una inclinacion bien definida respecto a una rama" crlf)
)