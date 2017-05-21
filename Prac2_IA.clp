; Fri May 19 17:00:52 GST 2017
;
;+ (version "3.5")
;+ (build "Build 663")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Gama
		(type SYMBOL)
		(allowed-values baja media alta)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Clasificacion
		(type SYMBOL)
		(allowed-values sopa ensalada bocadillo tapa asado plancha frito fruta reposteria pasta)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot PrecioB
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TipoEst
;+		(comment "???")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CalidadM
		(type INTEGER)
		(range 0 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Tiene
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(multislot Especiales
		(type SYMBOL)
		(allowed-values vegano sin_gluten sin_lactosa vegetariano pesado ligero japones italiano)
		(create-accessor read-write))
	(single-slot PrecioP
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Refresco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CalidadR
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot MenuP
		(type SYMBOL)
;+		(allowed-parents Menu)
		(create-accessor read-write))
	(multislot Num_com
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values verano todas primavera otono invierno)
		(default todas)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Restricciones
		(type SYMBOL)
;+		(allowed-parents Restriccion)
		(create-accessor read-write))
	(single-slot NombreP
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Segundo
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreB
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot NoTiene
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(single-slot Orden
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejidad
;+		(comment "0 to 5")
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NombreI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot EspecialM
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CantidadR
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Primero
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot MenuEvento
		(type SYMBOL)
;+		(allowed-parents Menu)
		(cardinality 0 3)
		(create-accessor read-write))
	(multislot Presupuesto
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Calidad
		(type INTEGER)
		(range 0 5)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Componentes
		(type INSTANCE)
;+		(allowed-classes Ingredientes)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Postre
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Ingrediente
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(single-slot PrecioMenu
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot MayorQue
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoI
		(type SYMBOL)
		(allowed-values lacteos proteina_animal hidratos fruta%2Fverdura grasas condimentos otros dulces legumbre carne pescado huevos marisco)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TipoE
;+		(comment "Deberia ser Symbol")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot BebidaM
		(type SYMBOL)
;+		(allowed-parents Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot TipoA
		(type SYMBOL)
		(allowed-values cerveza cava vino_blanco vino_tinto vino_negro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot NoIngrediente
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(single-slot N
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Evento
	(is-a USER)
	(role concrete)
	(multislot Restricciones
		(type SYMBOL)
;+		(allowed-parents Restriccion)
		(create-accessor read-write))
	(single-slot TipoE
;+		(comment "Deberia ser Symbol")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Num_com
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot MenuEvento
		(type SYMBOL)
;+		(allowed-parents Menu)
		(cardinality 0 3)
		(create-accessor read-write))
	(multislot Presupuesto
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete)
	(single-slot Primero
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Segundo
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioMenu
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot BebidaM
		(type SYMBOL)
;+		(allowed-parents Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CalidadM
		(type INTEGER)
		(range 0 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Postre
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot EspecialM
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a USER)
	(role concrete)
	(multislot Componentes
		(type INSTANCE)
;+		(allowed-classes Ingredientes)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Especiales
		(type SYMBOL)
		(allowed-values vegano sin_gluten sin_lactosa vegetariano pesado ligero japones italiano)
		(create-accessor read-write))
	(single-slot PrecioP
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreP
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Orden
		(type SYMBOL)
		(allowed-values Primero Segundo Postre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejidad
;+		(comment "0 to 5")
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Calidad
		(type INTEGER)
		(range 0 5)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values verano todas primavera otono invierno)
		(default todas)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot NombreB
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot PrecioB
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Alcohol
	(is-a Bebida)
	(role concrete)
	(single-slot Gama
		(type SYMBOL)
		(allowed-values baja media alta)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoA
		(type SYMBOL)
		(allowed-values cerveza cava vino_blanco vino_tinto vino_negro)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass NoAlcohol
	(is-a Bebida)
	(role concrete)
	(single-slot Refresco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Ingredientes
	(is-a USER)
	(role concrete)
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot NombreI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Restriccion
	(is-a USER)
	(role concrete))

(defclass TieneIng
	(is-a Restriccion)
	(role concrete)
	(multislot Tiene
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write)))

(defclass NoTieneIng
	(is-a Restriccion)
	(role concrete)
	(multislot NoTiene
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write)))

(defclass Estilo
	(is-a Restriccion)
	(role concrete)
	(single-slot CantidadR
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CalidadR
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoEst
;+		(comment "???")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass PrecioR
	(is-a Restriccion)
	(role concrete)
	(single-slot MayorQue
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot N
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass AllMenus
	(is-a USER)
	(role concrete)
	(multislot MenuP
		(type SYMBOL)
;+		(allowed-parents Menu)
		(create-accessor read-write)))



(definstances instancies
	([ProtegeMenu_Class0] of  Plato

		(Calidad 2)
		(Caliente TRUE)
		(Complejidad 1)
		(Componentes
			[ProtegeMenu_Class3]
			[ProtegeMenu_Class2]
			[Proyect2_Class20016]
			[Proyect2_Class1])
		(Especiales vegetariano)
		(NombreP "patatas con alioli")
		(Orden Primero)
		(Temporada todas))

	([ProtegeMenu_Class10] of  Ingredientes

		(NombreI "harina")
		(Precio 0.1))

	([ProtegeMenu_Class11] of  Ingredientes

		(NombreI "queso parmesano")
		(Precio 3.0))

	([ProtegeMenu_Class12] of  Ingredientes

		(NombreI "espinacas")
		(Precio 1.8))

	([ProtegeMenu_Class13] of  Plato

		(Calidad 3)
		(Caliente TRUE)
		(Complejidad 4)
		(Componentes
			[ProtegeMenu_Class14]
			[ProtegeMenu_Class15]
			[Proyect2_Class10030]
			[Proyect2_Class10011]
			[ProtegeMenu_Class11]
			[Proyect2_Class10024]
			[ProtegeMenu_Class10]
			[Proyect2_Class20016]
			[Proyect2_Class20004])
		(Especiales italiano)
		(NombreP "canelones")
		(Orden Segundo)
		(Temporada todas))

	([ProtegeMenu_Class14] of  Ingredientes

		(NombreI "tomate frito")
		(Precio 1.0))

	([ProtegeMenu_Class15] of  Ingredientes

		(NombreI "carne picada")
		(Precio 3.0))

	([ProtegeMenu_Class16] of  Ingredientes
	)

	([ProtegeMenu_Class2] of  Ingredientes

		(NombreI "patata")
		(Precio 0.5))

	([ProtegeMenu_Class3] of  Ingredientes

		(NombreI "alioli")
		(Precio 0.1))

	([ProtegeMenu_Class4] of  Plato

		(Calidad 2)
		(Complejidad 3)
		(Componentes
			[ProtegeMenu_Class5]
			[Proyect2_Class10000]
			[ProtegeMenu_Class6]
			[ProtegeMenu_Class7]
			[Proyect2_Class10028]
			[Proyect2_Class10022]
			[Proyect2_Class10014]
			[ProtegeMenu_Class8])
		(Especiales japones ligero)
		(NombreP "sushi")
		(Orden Segundo)
		(Temporada todas))

	([ProtegeMenu_Class5] of  Ingredientes

		(NombreI "alga")
		(Precio 0.6))

	([ProtegeMenu_Class6] of  Ingredientes

		(NombreI "vinagre arroz")
		(Precio 0.2))

	([ProtegeMenu_Class7] of  Ingredientes

		(NombreI "pepino")
		(Precio 0.4))

	([ProtegeMenu_Class8] of  Ingredientes

		(NombreI "aguacate")
		(Precio 0.5))

	([ProtegeMenu_Class9] of  Plato

		(Calidad 3)
		(Caliente TRUE)
		(Complejidad 3)
		(Componentes
			[ProtegeMenu_Class10]
			[Proyect2_Class20020]
			[Proyect2_Class10024]
			[Proyect2_Class10011]
			[ProtegeMenu_Class11]
			[ProtegeMenu_Class12])
		(Especiales vegetariano)
		(NombreP "canelones con espinacas")
		(Orden Segundo)
		(Temporada todas))

	([Proyect2_Class0] of  Plato

		(Calidad 1)
		(Complejidad 1)
		(Componentes
			[Proyect2_Class20000]
			[Proyect2_Class3]
			[Proyect2_Class20016]
			[Proyect2_Class20007])
		(NombreP "bocata de mortadela")
		(Orden Segundo))

	([Proyect2_Class1] of  Ingredientes

		(NombreI "huevo gallina")
		(Precio 0.2))

	([Proyect2_Class10000] of  Ingredientes

		(NombreI "azucar")
		(Precio 0.5))

	([Proyect2_Class10001] of  Ingredientes

		(NombreI "aceituna")
		(Precio 0.7))

	([Proyect2_Class10002] of  Ingredientes

		(NombreI "cerdo")
		(Precio 3.0))

	([Proyect2_Class10003] of  Ingredientes

		(NombreI "cerdo ecologico")
		(Precio 4.0))

	([Proyect2_Class10004] of  Ingredientes

		(NombreI "caviar")
		(Precio 80.0))

	([Proyect2_Class10005] of  Ingredientes

		(NombreI "margarina")
		(Precio 0.5))

	([Proyect2_Class10006] of  Ingredientes

		(NombreI "margarina buena")
		(Precio 2.0))

	([Proyect2_Class10007] of  Plato

		(Calidad 5)
		(Caliente FALSE)
		(Complejidad 1)
		(Componentes
			[Proyect2_Class20000]
			[Proyect2_Class10004]
			[Proyect2_Class10024])
		(Especiales sin_lactosa ligero)
		(NombreP "tostadas con caviar")
		(Orden Primero))

	([Proyect2_Class10008] of  Ingredientes

		(NombreI "lechuga")
		(Precio 0.0))

	([Proyect2_Class10009] of  Ingredientes

		(NombreI "lechuga buena")
		(Precio 1.0))

	([Proyect2_Class10011] of  Ingredientes

		(NombreI "cebolla")
		(Precio 0.5))

	([Proyect2_Class10012] of  Ingredientes

		(NombreI "lentejas")
		(Precio 0.5))

	([Proyect2_Class10013] of  Ingredientes

		(NombreI "garbanzos")
		(Precio 0.5))

	([Proyect2_Class10014] of  Ingredientes

		(NombreI "arroz")
		(Precio 0.3))

	([Proyect2_Class10015] of  Ingredientes

		(NombreI "pato")
		(Precio 4.0))

	([Proyect2_Class10016] of  Ingredientes

		(NombreI "pollo")
		(Precio 2.0))

	([Proyect2_Class10017] of  Ingredientes

		(NombreI "ternera")
		(Precio 2.5))

	([Proyect2_Class10018] of  Ingredientes

		(NombreI "gamba")
		(Precio 4.0))

	([Proyect2_Class10019] of  Ingredientes

		(NombreI "calamar")
		(Precio 3.0))

	([Proyect2_Class10020] of  Ingredientes

		(NombreI "conejo")
		(Precio 3.0))

	([Proyect2_Class10021] of  Ingredientes

		(NombreI "pavo")
		(Precio 3.5))

	([Proyect2_Class10022] of  Ingredientes

		(NombreI "salmon")
		(Precio 3.5))

	([Proyect2_Class10023] of  Ingredientes

		(NombreI "merluza")
		(Precio 2.5))

	([Proyect2_Class10024] of  Ingredientes

		(NombreI "mantequilla")
		(Precio 0.5))

	([Proyect2_Class10025] of  Ingredientes

		(NombreI "mantequilla buena")
		(Precio 2.0))

	([Proyect2_Class10026] of  Ingredientes

		(NombreI "bacalao")
		(Precio 2.0))

	([Proyect2_Class10027] of  Ingredientes

		(NombreI "alubias")
		(Precio 0.5))

	([Proyect2_Class10028] of  Ingredientes

		(NombreI "zanahoria")
		(Precio 0.5))

	([Proyect2_Class10029] of  Ingredientes

		(NombreI "ajo")
		(Precio 0.5))

	([Proyect2_Class10030] of  Ingredientes

		(NombreI "pimiento")
		(Precio 0.5))

	([Proyect2_Class10031] of  Ingredientes

		(NombreI "brocoli")
		(Precio 1.0))

	([Proyect2_Class10032] of  Ingredientes

		(NombreI "col")
		(Precio 0.2))

	([Proyect2_Class10033] of  Ingredientes

		(NombreI "coliflor")
		(Precio 0.7))

	([Proyect2_Class10034] of  Ingredientes

		(NombreI "rabano")
		(Precio 0.5))

	([Proyect2_Class10035] of  Ingredientes

		(NombreI "pasta trigo")
		(Precio 1.5))

	([Proyect2_Class10036] of  Ingredientes

		(NombreI "quinoa")
		(Precio 2.0))

	([Proyect2_Class10037] of  Ingredientes

		(NombreI "avena")
		(Precio 1.0))

	([Proyect2_Class10038] of  Ingredientes

		(NombreI "pasta maiz")
		(Precio 2.0))

	([Proyect2_Class2] of  Ingredientes

		(NombreI "nocilla")
		(Precio 2.0))

	([Proyect2_Class20000] of  Ingredientes

		(NombreI "pan")
		(Precio 0.2))

	([Proyect2_Class20001] of  Ingredientes

		(NombreI "azucar moreno")
		(Precio 0.4))

	([Proyect2_Class20002] of  Ingredientes

		(NombreI "pimienta")
		(Precio 0.1))

	([Proyect2_Class20003] of  Ingredientes

		(NombreI "pimenton")
		(Precio 0.1))

	([Proyect2_Class20004] of  Ingredientes

		(NombreI "sal")
		(Precio 0.0))

	([Proyect2_Class20005] of  Ingredientes

		(NombreI "curry")
		(Precio 0.1))

	([Proyect2_Class20006] of  Ingredientes

		(NombreI "oregano")
		(Precio 0.2))

	([Proyect2_Class20007] of  Ingredientes

		(NombreI "tomate")
		(Precio 0.5))

	([Proyect2_Class20008] of  Ingredientes

		(NombreI "manzana")
		(Precio 0.5))

	([Proyect2_Class20009] of  Ingredientes

		(NombreI "pera")
		(Precio 0.5))

	([Proyect2_Class20010] of  Ingredientes

		(NombreI "naranja")
		(Precio 0.5))

	([Proyect2_Class20011] of  Ingredientes

		(NombreI "kiwi")
		(Precio 0.6))

	([Proyect2_Class20012] of  Ingredientes

		(NombreI "fresa")
		(Precio 1.0))

	([Proyect2_Class20013] of  Ingredientes

		(NombreI "melon")
		(Precio 0.7))

	([Proyect2_Class20014] of  Ingredientes

		(NombreI "miel")
		(Precio 0.7))

	([Proyect2_Class20015] of  Ingredientes

		(NombreI "sandia")
		(Precio 0.6))

	([Proyect2_Class20016] of  Ingredientes

		(NombreI "aceite")
		(Precio 0.5))

	([Proyect2_Class20017] of  Ingredientes

		(NombreI "cheddar")
		(Precio 3.0))

	([Proyect2_Class20018] of  Ingredientes

		(NombreI "emmental")
		(Precio 3.0))

	([Proyect2_Class20019] of  Ingredientes

		(NombreI "queso azul")
		(Precio 3.5))

	([Proyect2_Class20020] of  Ingredientes

		(NombreI "leche")
		(Precio 0.7))

	([Proyect2_Class20021] of  Ingredientes

		(NombreI "nata")
		(Precio 1.5))

	([Proyect2_Class20022] of  Ingredientes

		(NombreI "yogur")
		(Precio 1.0))

	([Proyect2_Class3] of  Ingredientes

		(NombreI "mortadela")
		(Precio 0.5))

	([Proyect2_Class30000] of  NoAlcohol

		(NombreB "agua")
		(PrecioB 0.0))

	([Proyect2_Class30008] of  Plato

		(Calidad 5)
		(Caliente FALSE)
		(Complejidad 1)
		(Componentes
			[Proyect2_Class20000]
			[Proyect2_Class10004]
			[Proyect2_Class10005])
		(Especiales sin_lactosa vegetariano ligero)
		(NombreP "tostadas con caviar vegetariana")
		(Orden Primero))

	([Proyect2_Class30011] of  Plato

		(Calidad 2)
		(Caliente TRUE)
		(Complejidad 3)
		(Componentes
			[Proyect2_Class10014]
			[Proyect2_Class10012]
			[Proyect2_Class10029]
			[Proyect2_Class20004])
		(Especiales pesado vegano vegetariano sin_gluten sin_lactosa)
		(NombreP "arroz con lentejas")
		(Orden Primero)
		(Temporada todas))

	([Proyect2_Class30012] of  Ingredientes

		(NombreI "jamon")
		(Precio 2.0))

	([Proyect2_Class30013] of  Plato

		(Calidad 1)
		(Caliente TRUE)
		(Complejidad 2)
		(Componentes
			[Proyect2_Class10017]
			[Proyect2_Class10016]
			[Proyect2_Class10008]
			[Proyect2_Class10011]
			[Proyect2_Class20007])
		(Especiales pesado)
		(NombreP "kebab")
		(Orden PlatoCombinado))

	([Proyect2_Class40000] of  Alcohol

		(Gama baja)
		(NombreB "sanmiguel")
		(PrecioB 0.7)
		(TipoA cerveza))

	([Proyect2_Class40001] of  NoAlcohol

		(NombreB "cocacola")
		(PrecioB 0.7)
		(Refresco TRUE))

	([Proyect2_Class40002] of  NoAlcohol

		(NombreB "fanta naranja")
		(PrecioB 0.7)
		(Refresco TRUE))

	([Proyect2_Class40003] of  NoAlcohol

		(NombreB "fanta limon")
		(PrecioB 0.7)
		(Refresco TRUE))

	([Proyect2_Class40004] of  NoAlcohol

		(NombreB "acuarius")
		(PrecioB 0.9)
		(Refresco TRUE))

	([Proyect2_Class40005] of  NoAlcohol

		(NombreB "zumo de naranja")
		(PrecioB 1.0))

	([Proyect2_Class40006] of  NoAlcohol

		(NombreB "limonada")
		(PrecioB 0.9))

	([Proyect2_Class40007] of  NoAlcohol

		(NombreB "camomila")
		(PrecioB 0.5))

	([Proyect2_Class5] of  Plato

		(Calidad 2)
		(Caliente FALSE)
		(Complejidad 1)
		(Componentes
			[Proyect2_Class20000]
			[Proyect2_Class2])
		(Especiales vegano sin_gluten)
		(NombreP "bocata de nocilla")
		(Orden Postre))

	([Proyect2_Class50003] of  Alcohol

		(Gama media)
		(NombreB "estrelladam")
		(PrecioB 0.9)
		(TipoA cerveza))

	([Proyect2_Class50004] of  Alcohol

		(Gama alta)
		(NombreB "taramay")
		(PrecioB 1.5)
		(TipoA cerveza))

	([Proyect2_Class50005] of  Alcohol

		(Gama baja)
		(NombreB "cava eroski")
		(PrecioB 1.0)
		(TipoA cava))

	([Proyect2_Class50006] of  Alcohol

		(Gama media)
		(NombreB "codorniu brut")
		(PrecioB 6.0)
		(TipoA cava))

	([Proyect2_Class50007] of  Alcohol

		(Gama alta)
		(NombreB "codorniu gran reserva")
		(PrecioB 13.0)
		(TipoA cava))

	([Proyect2_Class50008] of  Alcohol

		(Gama baja)
		(NombreB "don simon blanco")
		(PrecioB 0.7)
		(TipoA vino_blanco))

	([Proyect2_Class50009] of  Alcohol

		(Gama baja)
		(NombreB "don simon tinto")
		(PrecioB 1.0)
		(TipoA vino_tinto))

	([Proyect2_Class50010] of  Alcohol

		(Gama baja)
		(NombreB "don simon negro")
		(PrecioB 1.0)
		(TipoA vino_negro))

	([Proyect2_Class50011] of  Alcohol

		(Gama media)
		(NombreB "blanc pescador")
		(PrecioB 7.0)
		(TipoA vino_blanco))

	([Proyect2_Class50012] of  Alcohol

		(Gama alta)
		(NombreB "perro verde")
		(PrecioB 20.0)
		(TipoA vino_blanco))

	([Proyect2_Class50013] of  Alcohol

		(Gama media)
		(NombreB "bodegas vivanco tinto")
		(PrecioB 7.0)
		(TipoA vino_tinto))

	([Proyect2_Class50014] of  Alcohol

		(Gama media)
		(NombreB "bodegas vivanco negro")
		(PrecioB 7.0)
		(TipoA vino_negro))

	([Proyect2_Class50015] of  Alcohol

		(Gama alta)
		(NombreB "alabaster gran reserva tinto")
		(PrecioB 15.0)
		(TipoA vino_tinto))

	([Proyect2_Class50016] of  Alcohol

		(Gama alta)
		(NombreB "alabaster gran reserva negro")
		(PrecioB 15.0)
		(TipoA vino_negro))

	([Proyect2_Class50017] of  Plato

		(Calidad 3)
		(Caliente TRUE)
		(Complejidad 3)
		(Componentes
			[Proyect2_Class10016]
			[Proyect2_Class10014]
			[Proyect2_Class20005])
		(Especiales sin_gluten sin_lactosa)
		(NombreP "pollo con curry")
		(Orden Segundo))

	([Proyect2_Class50018] of  Plato

		(Calidad 2)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20015])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "sandia")
		(Orden Postre)
		(Temporada verano))

	([Proyect2_Class50019] of  Plato

		(Calidad 4)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20012])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "fresas")
		(Orden Postre)
		(Temporada primavera))

	([Proyect2_Class50020] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20008])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "manzana")
		(Orden Postre)
		(Temporada oto%C3%B1o))

	([Proyect2_Class50021] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20009])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "pera")
		(Orden Postre)
		(Temporada oto%C3%B1o))

	([Proyect2_Class50022] of  Plato

		(Calidad 4)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20013])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "melon")
		(Orden Postre)
		(Temporada verano))

	([Proyect2_Class50023] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20010])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "naranja")
		(Orden Postre)
		(Temporada invierno))

	([Proyect2_Class50024] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20011])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "kiwi")
		(Orden Postre)
		(Temporada invierno))

	([Proyect2_Class50025] of  Plato

		(Calidad 2)
		(Complejidad 0)
		(Componentes [Proyect2_Class20022])
		(Especiales vegetariano sin_gluten sin_lactosa ligero)
		(NombreP "yogur")
		(Orden Postre))

	([Proyect2_Class50026] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 2)
		(Componentes
			[Proyect2_Class20018]
			[Proyect2_Class20004]
			[Proyect2_Class20016]
			[Proyect2_Class10038])
		(Especiales vegetariano sin_gluten)
		(NombreP "pasta con queso fundido sin gluten")
		(Orden Primero))

	([Proyect2_Class50027] of  Plato

		(Calidad 4)
		(Complejidad 1)
		(Componentes
			[Proyect2_Class20013]
			[Proyect2_Class30012])
		(Especiales sin_gluten sin_lactosa ligero)
		(NombreP "melon con jamon")
		(Orden Primero)
		(Temporada verano))


	)







;;****************
;;*  TEMPLATES   *
;;****************


; )


;;****************
;;* DEFFUNCTIONS *
;;****************

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer)

(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question yes no y n))
   (if (or (eq ?response yes) (eq ?response y))
       then TRUE
       else FALSE))

(deffunction cuanto (?question)
	(printout t ?question)
	(bind ?answer (read))
	(if (lexemep ?answer)
		then (bind ?answer (lowcase ?answer))
		)
	;(if (test (or (!= ?answer "no") (!= ?answer "n")))
		; (bind $?ingredientes (find-all-instances ((?inst Ingredientes get-NombreI)) TRUE))
		; (while (not (member ?answer ?ingredientes)) do
		; 	(printout t "Ingrediente desconocido")
		; 	(printout t ?question)
		; 	(bind ?answer (read))
		; 	(if (lexemep ?answer)
		; 		then (bind ?answer (lowcase ?answer))
		; 		)
		; )
	;)
		?answer
 )

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "�%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

(deffunction printa-menu "" (?menu)
(bind ?prim (send ?menu get-Primero))
(bind ?seg (send ?menu get-Segundo))
(bind ?postr (send ?menu get-Postre))
(bind ?prec (send ?menu get-PrecioMenu))
(printout t crlf "Primero: "(send ?prim get-NombreP) crlf)
(printout t "Segundo: "(send ?seg get-NombreP) crlf)
(printout t "Postre: "(send ?postr get-NombreP) crlf)
(printout t ?prec crlf crlf)
)
;;calcula el precio de un plato
(deffunction sumapreuComp "" ( $?comp )
  (bind ?x 0)
	;(printout t "suma dels preus ")
  (loop-for-count (?i 1 (length ?comp)) do
    (bind ?var (nth$ ?i ?comp))
    (bind ?precio (send ?var get-Precio))
    (bind ?x (+ ?x ?precio))
  )
 ?x
)

(deffunction evaluable "" ( ?menu )
  (bind ?x TRUE)
  (bind ?prim (send ?menu get-Primero))
  (bind ?x (and ?x (not (eq ?prim nil))))
  (bind ?seg (send ?menu get-Segundo))
  (bind ?x (and ?x (not (eq ?seg nil))))
  (bind ?postr (send ?menu get-Postre))
  (bind ?x (and ?x (not (eq ?postr nil))))
	;(printout t "evaluable " ?x crlf)
  ?x
)


(deffunction tiene-especial (?plato ?simbolo)
	(bind $?especiales (send ?plato get-Especiales))
	(bind ?ans FALSE)
	(if (> (length$ ?especiales ) 0)
		then (loop-for-count (?i 1  (length$ ?especiales)) do
			(bind ?cur (nth$ ?i ?especiales))
			(bind ?ans (or ?ans (eq ?simbolo ?cur)) )
		)
	)
	?ans
)

;menu es japones tiene un plato japones
(deffunction japones-menu  (?menu)
	(bind ?ans FALSE)
	(bind ?prim (send ?menu get-Primero))
	(bind ?seg (send ?menu get-Segundo))
	(bind ?post (send ?menu get-Postre))
	(bind ?ans (or (tiene-especial ?prim japones) ?ans))
	(bind ?ans (or (tiene-especial ?seg japones) ?ans))
	(bind ?ans (or (tiene-especial ?post japones) ?ans))
	?ans
)

;menu es japones tiene un plato japones
(deffunction italiano-menu  (?menu)
	(bind ?ans FALSE)
	(bind ?prim (send ?menu get-Primero))
	(bind ?seg (send ?menu get-Segundo))
	(bind ?post (send ?menu get-Postre))
	(bind ?ans (and (tiene-especial ?prim italiano) ?ans))
	(bind ?ans (and (tiene-especial ?seg italiano) ?ans))
	(bind ?ans (and (tiene-especial ?post italiano) ?ans))
	?ans
)

; ;;NUMERO DE MENUS QUE CUMPLAN LA PROPIEDAD
; QUE DEVUELVE LA FUNCION ?foo
(deffunction numero-propiedad (?foo)
   (bind ?x 0)
	 (bind $?allmenus (find-all-instances ((?inst Menu)) TRUE))
	 (loop-for-count (?i 1 (length$ ?allmenus)) do
			(bind ?menu (nth$ ?i ?allmenus))
			(if (funcall ?foo ?menu) then (bind ?x (+ ?x 1)))
		)
		?x
)
(deffunction numero-menus ()
	(bind $?allmenus (find-all-instances ((?inst Menu)) TRUE))
	(bind ?x (length$ ?allmenus))
	?x
)

;;elimina los platos para los que la función foo da cierto
(deffunction eliminar-propiedad (?foo)
	(bind $?allmenus (find-all-instances ((?inst Menu)) TRUE))
	(loop-for-count (?i 1 (length$ ?allmenus)) do
		 (bind ?menu (nth$ ?i ?allmenus))
		 (if (funcall ?foo ?menu) then send ?menu delete
		 ;(send ?menu delete)(printout t "Eliminando menu1 " (numero-menus) "restantes" crlf )
		 )
	 )
)
;;elimina los platos para los que la función foo da false
(deffunction eliminar-propiedad-not (?foo)
	(bind $?allmenus (find-all-instances ((?inst Menu)) TRUE))
	(loop-for-count (?i 1 (length$ ?allmenus)) do
		 (bind ?menu (nth$ ?i ?allmenus))
		 (if (not (funcall ?foo ?menu)) then send ?menu delete
		 ;(send ?menu delete) (printout t "Eliminando menu2"  (numero-menus) "restantes" crlf )
		 )
	 )
)



;;ELIMINA DE LA LISTA DE INSTANCIAS AQUELLAS QUE POR EL MULTISLOT SL NO
;;;CONTENGAN EL VALOR ?CONST  PAGINA 44 FAQ
(deffunction filtrar-multi-por (?li ?sl ?const)
 (bind ?encontrado FALSE)
 (if (neq ?li FALSE) then

 	(bind ?li (create$ ?li))

 	(if (> (length ?li) 0) then
 		(loop-for-count (?i 1 (length ?li))
 			(bind $?v (send (nth$ ?i ?li) ?sl))

 				(if (member$ ?const $?v) then
 					(if (eq ?encontrado FALSE) then
 						(bind ?encontrado TRUE)
 						(bind ?ins (nth$ ?i ?li))
 						else
 						(bind ?ins (create$ ?ins (nth$ ?i ?li)))
 					)
 				)
 			)
 		)
 	)
 	(if (eq ?encontrado FALSE) then
 		(bind ?ins FALSE)
 	)
	(return ?ins)
)

(deffunction menus-nombre (?menu)
	(bind ?prim (send ?menu get-Primero))
	(bind ?seg (send ?menu get-Segundo))
	(bind ?pos (send ?menu get-Postre))
	(bind ?beb (send ?menu get-BebidaM))

	(bind ?p1 (send ?prim get-NombreP))
	(bind ?p2 (send ?seg get-NombreP))
	(bind ?p3 (send ?pos get-NombreP))
	(bind ?p4 (send ?beb get-NombreB))
	(str-cat ?p1 "," ?p2 "," ?p3 "," ?p4 "," clrf)
)

;;;**************************************
;;;
;;;---------      MAIN       -----------
;;;
;;;**************************************
(defmodule MAIN (export ?ALL))

(defrule system-begin ""
  (initial-fact)
  (not (menu-nuevo))
  =>
  (printout t crlf)
  (printout t "----------------------------" crlf)
  (printout t "The Menu Maker Expert System" crlf)
  (printout t "----------------------------" crlf)
  (printout t crlf)
  (assert (menu-nuevo))
  (focus make-questions)
)


;;;****************************
;;;
;;;***** Questions Module *****
;;;
;;;****************************
(defmodule make-questions
    (import MAIN ?ALL)
    (export ?ALL)
)



(defrule tipoEvento "regla para saber el tipo de evento"
(not (questions end))
  (not (Evento Tipo ?))
  =>
  (switch (ask-question "Elija el tipo de evento:
    1:Boda
    2:Cumpleagnos
    3:Fiesta Infantil
    4:Cena de empresa
    5:Fin de agno
    >"
      1 2 3 4 5)
    (case 1 then (assert (Evento Tipo Boda)))
    (case 2 then (assert (Evento Tipo Cumpleagnos)))
    (case 3 then (assert (Evento Tipo Fiesta_Infantil)))
    (case 4 then (assert (Evento Tipo Cena_empresa)))
    (case 5 then (assert (Evento Tipo Fin_agno)))
    (default (printout t "No te he entendido"))
    )
)


(defrule determine-num-com "regla para saber el numero aproximado de invitados"
(not (questions end))
 ;(declare (salience 900))
 (not (Evento Num_com ?) )
 =>
 (switch   (ask-question "Cuanta gente calculas tener?
     1:10-20
     2:20-50
     3:50-100
     4:100 o mas
>"
      1 2 3 4 5)
   (case 1 then (assert (Evento Num_com 10)))
   (case 2 then (assert (Evento Num_com 30)))
   (case 3 then (assert (Evento Num_com 70)))
   (case 4 then (assert (Evento Num_com 100)))
	 (case 5 then (assert (Evento Num_com 150)))
   (default (printout t "No te he entendido"))
  )
)

(defrule pregunta-presupuesto "regla para saber el presupuesto"
(not (questions end))
(not (Evento Presupuesto ?) )
;(declare (salience 1))
=>
(switch   (ask-question "Cuanta presupuesto tienes?
    1:100
    2:200
    3:400
    4:TODO
>"
     1 2 3 4)
  (case 1 then (assert (Evento Presupuesto 100)))
  (case 2 then (assert (Evento Presupuesto 200)))
  (case 3 then (assert (Evento Presupuesto 400)))
  (case 4 then (assert (Evento Presupuesto 100000)))
  (default (printout t "No te he entendido"))
 )
)

(defrule pregunta-temporada "regla para saber el presupuesto"
(not (questions end))
(not (Evento Temporada ?) )
=>
(switch   (ask-question "En que estacion se produce el evento?
    1:Primavera
    2:Verano
    3:Otono
    4:Invierno
>"
     1 2 3 4)
  (case 1 then (assert (Evento Temporada primavera)))
  (case 2 then (assert (Evento Temporada verano )))
  (case 3 then (assert (Evento Temporada otono)))
  (case 4 then (assert (Evento Temporada invierno)))
  (default (printout t "No te he entendido"))
 )
)

(defrule end-questions "regla para pasar al siguiente modulo"
    ;(declare (salience -3))
		(not (questions end))
		(Evento Presupuesto ?)
		(Evento Num_com ?)
		(Evento Tipo ?)
		(Evento Temporada ?)
    ;(menu-nuevo)
    =>
    (printout t "fin de las preguntas" crlf)
    (focus inferir_datos)
		(assert (menusGenerar))
		(assert (questions end))
		)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas

(defmodule inferir_datos
    (import MAIN ?ALL)
    (import make-questions ?ALL)
    (export ?ALL)
)
(defrule presupuesto-por-invitado "regla para establecer el presupuesto-por-invitado maximo"
			(declare (salience 20))
			(not (filtrado-2))
			(Evento Num_com ?numcom)
		  (Evento Presupuesto  ?presu)
		  (not (presupuesto-por-invitado ?))
		  =>
		  (assert (presupuesto-por-invitado (/ ?presu ?numcom)))
		  (assert (inference end))
)

(defrule quitar-platos-complejidad
	(declare (salience 15))
	(not (filtrado-2))
  ?plato <- (object (is-a Plato) (Complejidad ?x))
	(Evento Complejidad ?temp)
	(test (> ?x ?temp))
	=>
	(printout t "Eliminando plato por estacion" crlf)
  (send ?plato delete)
	)

(defrule quitar-platos-temporada
	(declare (salience 15))
	(not (filtrado-2))
  ?plato <- (object (is-a Plato) (Temporada ?x))
	(Evento Temporada ?temp)
	(test (not (eq ?x ?temp)))
	;(test (printout t ?x ", " ?temp "= " (eq ?x ?temp) crlf))
  (test (not (eq ?x todas)))
	;(test (printout t ?x ", " todas "= " (eq ?x todas) crlf))

	=>
	;(printout t ?x ", " ?temp "= " (eq ?x ?temp) crlf)
	;(printout t ?x ", " todas "= " (eq ?x todas) crlf)
	(printout t "Eliminando plato por estacion" crlf)
  (send ?plato delete)
	)

(defrule quitar-bebidas-alcohol
	(declare (salience 15))
	(not (filtrado-2))
	?beb <- (object (is-a Alcohol))
	(Evento Calidad 1)
	=>
	(printout t "Eliminando bebidas alcoholicas" crlf)
	(send ?beb delete)
	)

(defrule insertaMenuses
	(declare (salience 10))
	(not (filtrado-2))
		(not (Menuses))
		=>
		(make-instance (gensym*) of AllMenus)
		(assert (Menuses))
		)


 (defrule addmembers-menu
	 (declare (salience 5))
	 (not (filtrado-2))
		 (Menuses)
		 ?men <- (object (is-a AllMenus) )
		 ?plato1 <- (object (is-a Plato) (Orden Primero))
		 ?plato2 <- (object (is-a Plato) (Orden Segundo))
		 ?plato3 <- (object (is-a Plato) (Orden Postre))
		 ?bebida <- (object (is-a Bebida))
		 =>
		 ;(printout t "creando menu " crlf)
		 (bind ?menu1 (make-instance  (gensym*) of Menu))
		 ;(printout t "menu creado " crlf)
		 ;(printout t "addmembers-menu" crlf)
		 (bind ?x (sumapreuComp (send ?plato1 get-Componentes)))
		 (bind ?y  (sumapreuComp (send ?plato2 get-Componentes)))
		 (bind ?z (sumapreuComp (send ?plato3 get-Componentes)))
		 (bind ?w (send ?bebida get-PrecioB))
		 ;(printout t "binded" crlf)
		 (send ?menu1 put-Primero ?plato1)
		 (send ?menu1 put-Segundo ?plato2)
		 (send ?menu1 put-Postre ?plato3)
		 (send ?menu1 put-BebidaM ?bebida)
		 (send ?menu1 put-PrecioMenu (+ ?x (+ ?y (+ ?z ?w))))

		 ;(printout t  crlf (menus-nombre ?menu1) crlf)
		 (if (japones-menu ?menu1) then (printout t "tengo un menu japo" crlf))
		 (slot-insert$ ?men MenuP 1 ?menu1)
		 )


(defrule filtrar-por-precio "quitar todos los que se pasan del presupuesto por invitado"
(not (filtrado-2))
?putamierda <- (object(is-a Menu) (PrecioMenu ?y))
(presupuesto-por-invitado ?x)
(test (evaluable ?putamierda))
(test (< ?x ?y))
=>
(send ?putamierda delete)
;(printout t "Eliminando menu por precio: " ?y crlf )
;(printout t ?y crlf )

)


(defrule finInferir "regla para pasar al modulo siguiente"
	(declare (salience -1))
      (inference end)
			;(presupuesto-por-invitado ?)
      (menu-nuevo)
			(not (filtrado-2))
      =>
	  (printout t "Inferencia de datos hecha, pasando al filtrado por preferencias" crlf)
		(printout t "Menus restantes : "  (numero-menus) crlf)
			(assert (filtrado-2))
			(focus filtrado)
)


;;;****************************
;;;
;;;***** Filtering Module *****
;;;
;;;****************************

(defmodule filtrado
    (import MAIN ?ALL)
    (import make-questions ?ALL)
    (import inferir_datos ?ALL)
    (export ?ALL))

(defrule preguntar-japones
	(declare ( salience 20))
	(not (filtrado end))
	(not (preguntar-japones))
	(test (< 4 (numero-propiedad japones-menu)))
	(test (< 4
		 (- (numero-propiedad japones-menu) (numero-menus))))
	=>
	(switch   (ask-question "Prefieres comida japonesa?(1/2/3)
	    1:Si
	    2:No
	    3:Es indiferente
	>"
	     1 2 3)
	  (case 1 then (eliminar-propiedad-not japones-menu))
	  (case 2 then (eliminar-propiedad japones-menu))
	  (case 3 then (- 1 1))
	  (default (printout t "No te he entendido"))
	 )
	(assert (preguntar-japones))
)


(defrule preguntar-italiano
	(declare ( salience 20))
	(not (filtrado end))
	(not (preguntar-italiano))
	(test (< 4 (numero-propiedad italiano-menu)))
	(test (< 4
		 (- (numero-propiedad italiano-menu) (numero-menus))))
	=>
	(switch   (ask-question "Prefieres comida italiana?(1/2/3)
	    1:Si
	    2:No
	    3:Es indiferente
	>"
	     1 2 3)
	  (case 1 then (eliminar-propiedad-not italiano-menu))
	  (case 2 then (eliminar-propiedad italiano-menu))
	  (case 3 then (- 1 1))
	  (default (printout t "No te he entendido"))
	 )
	(assert (preguntar-italiano))
)
; (defrule vegano "regla para saber si prefiere un menu vegano"
;   (declare (salience -1))
;   (not (want-vegan ?))
;   =>
;   (if (yes-or-no-p "Prefiere un menu vegano? (yes/no)")
;   then (assert (want-vegan yes))
;
;    else (assert (want-vegan  no))
;   )
;   (assert (questions end))
; )



(defrule fin-filtrado
	(declare (salience 100))
	(test (printout t "testeando fin filtrado, Japo:" preguntar-japones "  Ita:" preguntar-italiano crlf (numero-menus) crlf))
	(or
		(test (< 10 (numero-menus)))
		(and
			(preguntar-italiano)
			(preguntar-japones)
		)
	)
  (menu-nuevo)
	(not (filtrado end))
  =>
  (printout t "fin de Refinamiento,quedan " (numero-menus) "Menus" crlf)
  (focus recomendaciones)
	(assert (filtrado end))
)

(defrule no-platos "norma para si no quedan menus compatibles antes de escojer pref"
	(declare (salience 110))
	(not (filtrado end))
	(test (< 1 (numero-menus)))
	=>
	(printout t "No nos quedan menus, desgraciadamente no hay ninguno compatible con
	tus preferencias basicas" crlf)
	(assert (filtrado end))
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;-
;;;---------  				MODULO DE RECOMENDACIONES		---------- 				MODULO DE RECOMENDACIONES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se obtendran todas las solcuiones y se mostrara la solcuion
;; si hay mas de 6 solcuiones se mostraran las 6 con valor cuantitativo mas alto y
;; si hay menos pues se mostraran todas

 (defmodule recomendaciones
 	(import MAIN ?ALL)
 	(import inferir_datos ?ALL)
 	(import filtrado ?ALL)
 	;(import valorar_preferencias ?ALL)
 	(export ?ALL)
)

(defrule recomendar-menu1
	?mimenu <-(object (is-a Menu))
	(not (FIN1))
	=>
	(printa-menu ?mimenu)
	(assert (FIN1))
	)

; (defrule printa-menu
;   (object (is-a Menu) (Primero ?p) (Segundo ?s) (Postre ?po)  (BebidaM ?drink)(PrecioMenu ?preciom))
;   (nuevo_menu)
;   (not (FIN))
;   =>
;   (printout t "Primero: " (?p get-nombrePlato)
;   "Segondo: " (?s get-nombrePlato)
;   "Postre: " (?po get-nombrePlato)
;   "Bebida: " (?drink get-NombreB)
;   "Precio: " (?preciom get-PrecioMenu))
;   (assert (FIN))
;   )
