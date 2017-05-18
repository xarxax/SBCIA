
;;;-------------------------------------------------------------------------------------------------

;;;**************************************
;;;
;;; Defclass (.pont)
;;;
;;;**************************************
(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot BebidaM
		(type SYMBOL)
;+		(allowed-parents Bebida)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Postre
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioP
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Tiene
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(multislot Num_com
		(type INTEGER)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Especiales
		(type SYMBOL)
		(allowed-values vegano sin_gluten sin_lactosa vegetariano pesado ligero)
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
	(single-slot TipoA
		(type SYMBOL)
		(allowed-values cerveza cava vino_blanco vino_tinto vino_negro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Precio
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot CalidadM
		(type INTEGER)
		(range 0 5)
;+		(cardinality 1 1)
		(create-accessor read-write))
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
	(multislot Componentes
		(type INSTANCE)
;+		(allowed-classes Ingredientes)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Ingrediente
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(single-slot Complejidad
;+		(comment "0 to 5")
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot NoTiene
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write))
	(single-slot CantidadR
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NombreB
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot N
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot MenuEvento
		(type SYMBOL)
;+		(allowed-parents Menu)
		(cardinality 0 3)
		(create-accessor read-write))
	(multislot MenuP
		(type SYMBOL)
;+		(allowed-parents Menu)
		(create-accessor read-write))
	(single-slot MayorQue
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoE
;+		(comment "Deberia ser Symbol")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot EspecialM
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CalidadR
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Gama
		(type SYMBOL)
		(allowed-values baja media alta)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot NombreI
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Restricciones
		(type SYMBOL)
;+		(allowed-parents Restriccion)
		(create-accessor read-write))
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values verano todas primavera oto%C3%B1o invierno)
		(default todas)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioMenu
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Refresco
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot TipoI
		(type SYMBOL)
		(allowed-values lacteos proteina_animal hidratos fruta%2Fverdura grasas condimentos otros dulces legumbre carne pescado huevos marisco)
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
	(single-slot TipoEst
;+		(comment "???")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Clasificacion
		(type SYMBOL)
		(allowed-values sopa ensalada bocadillo tapa asado plancha frito fruta reposteria pasta)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot NoIngrediente
		(type SYMBOL)
;+		(allowed-parents Ingredientes)
		(create-accessor read-write)))

(defclass Evento
	(is-a USER)
	(role concrete)
	(multislot Restricciones
		(type SYMBOL)
;+		(allowed-parents Restriccion)
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
		(create-accessor read-write))
	(single-slot TipoE
;+		(comment "Deberia ser Symbol")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Menu
	(is-a USER)
	(role concrete)
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
	(single-slot Primero
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Postre
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioMenu
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Segundo
		(type SYMBOL)
;+		(allowed-parents Plato)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot EspecialM
		(type SYMBOL)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Plato
	(is-a USER)
	(role concrete)
	(single-slot Temporada
		(type SYMBOL)
		(allowed-values verano todas primavera oto%C3%B1o invierno)
		(default todas)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Especiales
		(type SYMBOL)
		(allowed-values vegano sin_gluten sin_lactosa vegetariano pesado ligero)
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
	(single-slot Caliente
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot PrecioP
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Componentes
		(type INSTANCE)
;+		(allowed-classes Ingredientes)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Calidad
		(type INTEGER)
		(range 0 5)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Complejidad
;+		(comment "0 to 5")
		(type INTEGER)
		(range 0 5)
;+		(cardinality 0 1)
		(create-accessor read-write)))

(defclass Bebida
	(is-a USER)
	(role concrete)
	(single-slot NombreB
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Alcohol
	(is-a Bebida)
	(role concrete)
	(single-slot TipoA
		(type SYMBOL)
		(allowed-values cerveza cava vino_blanco vino_tinto vino_negro)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Gama
		(type SYMBOL)
		(allowed-values baja media alta)
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
	(single-slot TipoEst
;+		(comment "???")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot CalidadR
		(type INTEGER)
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

;;;***************************************
;;;
;;; Definstances (.pins)
;;;
;;;***************************************
(definstances instancies
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
		(Precio 2.0))

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

		(NombreB "agua"))

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
		(Orden Primero))

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
		(TipoA cerveza))

	([Proyect2_Class40001] of  NoAlcohol

		(NombreB "cocacola")
		(Refresco TRUE))

	([Proyect2_Class40002] of  NoAlcohol

		(NombreB "fanta naranja")
		(Refresco TRUE))

	([Proyect2_Class40003] of  NoAlcohol

		(NombreB "fanta limon")
		(Refresco TRUE))

	([Proyect2_Class40004] of  NoAlcohol

		(NombreB "acuarius")
		(Refresco TRUE))

	([Proyect2_Class40005] of  NoAlcohol

		(NombreB "zumo de naranja"))

	([Proyect2_Class40006] of  NoAlcohol

		(NombreB "limonada"))

	([Proyect2_Class40007] of  NoAlcohol

		(NombreB "camomila"))

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
		(TipoA cerveza))

	([Proyect2_Class50004] of  Alcohol

		(Gama alta)
		(NombreB "taramay")
		(TipoA cerveza))

	([Proyect2_Class50005] of  Alcohol

		(Gama baja)
		(NombreB "eroski")
		(TipoA cava))

	([Proyect2_Class50006] of  Alcohol

		(Gama media)
		(NombreB "codorniu brut")
		(TipoA cava))

	([Proyect2_Class50007] of  Alcohol

		(Gama alta)
		(NombreB "codorniu gran reserva")
		(TipoA cava))

	([Proyect2_Class50008] of  Alcohol

		(Gama baja)
		(NombreB "don simon")
		(TipoA vino_blanco))

	([Proyect2_Class50009] of  Alcohol

		(Gama baja)
		(NombreB "don simon")
		(TipoA vino_tinto))

	([Proyect2_Class50010] of  Alcohol

		(Gama baja)
		(NombreB "don simon")
		(TipoA vino_negro))

	([Proyect2_Class50011] of  Alcohol

		(Gama media)
		(NombreB "blanc pescador")
		(TipoA vino_blanco))

	([Proyect2_Class50012] of  Alcohol

		(Gama alta)
		(NombreB "perro verde")
		(TipoA vino_blanco))

	([Proyect2_Class50013] of  Alcohol

		(Gama media)
		(NombreB "bodegas vivanco")
		(TipoA vino_tinto))

	([Proyect2_Class50014] of  Alcohol

		(Gama media)
		(NombreB "bodegas vivanco")
		(TipoA vino_negro))

	([Proyect2_Class50015] of  Alcohol

		(Gama alta)
		(NombreB "alabaster gran reserva")
		(TipoA vino_tinto))

	([Proyect2_Class50016] of  Alcohol

		(Gama alta)
		(NombreB "alabaster gran reserva")
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
		(Orden Postre))

	([Proyect2_Class50019] of  Plato

		(Calidad 4)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20012])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "fresas")
		(Orden Postre))

	([Proyect2_Class50020] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20008])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "manzana")
		(Orden Postre))

	([Proyect2_Class50021] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20009])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "pera")
		(Orden Postre))

	([Proyect2_Class50022] of  Plato

		(Calidad 4)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20013])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "melon")
		(Orden Postre))

	([Proyect2_Class50023] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20010])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "naranja")
		(Orden Postre))

	([Proyect2_Class50024] of  Plato

		(Calidad 3)
		(Caliente FALSE)
		(Complejidad 0)
		(Componentes [Proyect2_Class20011])
		(Especiales vegano sin_gluten sin_lactosa vegetariano ligero)
		(NombreP "kiwi")
		(Orden Postre))

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
		(Orden Primero))
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

 (deffunction sumapreuMenu "" ( ?menu )
   (bind ?x 0)
     (bind ?prim (send ?menu get-Primero))
     (bind ?x (+ ?x (send ?prim get-PrecioPlato)))
     (bind ?seg (send ?menu get-Segundo))
     (bind ?x (+ ?x (send ?seg get-PrecioPlato)))
     (bind ?postr (send ?menu get-Postre))
     (bind ?x (+ ?x (send ?postr get-PrecioPlato)))
		 (printout t "precio " ?x crlf)

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
					(printout t "evaluable " ?x crlf)
       ?x
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
	(bind ?p1 (send ?prim get-NombreP))
	(bind ?p2  (send ?seg get-NombreP))
	(bind ?p3 (send ?pos get-NombreP))
	(str-cat ?p1 " " ?p2 " " ?p3 " " clrf)
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

; (defrule answer ""
;   (declare (salience 1000))
;   (evento-nuevo ?)
;   =>
;   (printout t crlf crlf)
;   (printout t "Suggested Menu:")
;   (printout t crlf crlf)
;   (format t " %s%n%n%n" ?menu-valido))

;;;****************************
;;;
;;;***** Questions Module *****
;;;
;;;****************************
(defmodule make-questions
    (import MAIN ?ALL)
    (export ?ALL)
)

; (defrule ingrediente "regla para restringir un ingrediente"
; 	(not (Evento Ingrediente ?))
; 	=>
;
; 	(if (yes-or-no-p "Hay algun ingrediente que desea restringir?")
;   	then (
; 		(bind ?ing (cuanto "Diganos cual:"))
; 		(assert (Evento Ingrediente ?ing))
; 		(printout t "Ingrediente agnadido" crlf)
; 		)
;
;    else (assert (Evento Ingrediente no))
;   )



(defrule tipoEvento "regla para saber el tipo de evento"
  (not (Evento Tipo ?))
  =>
  (switch (ask-question "Elija el tipo de evento:
    1:Boda
    2:Cumpleaños
    3:Fiesta Infantil
    4:Cena de empresa
    5:Fin de año
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
(not (Evento Presupuesto ?) )
=>
(switch   (ask-question "Cuanta presupuesto tienes?
    1:10000
    2:20000
    3:40000
    4:100000
>"
     1 2 3 4)
  (case 1 then (assert (Evento Presupuesto 100)))
  (case 2 then (assert (Evento Presupuesto 200)))
  (case 3 then (assert (Evento Presupuesto 40000)))
  (case 4 then (assert (Evento Presupuesto 100000)))
  (default (printout t "No te he entendido"))
 )
)

(defrule vegano "regla para saber si prefiere un menu vegano"
  (declare (salience -1))
  (not (want-vegan ?))
  =>
  (if (yes-or-no-p "Prefiere un menu vegano? (yes/no)")
  then (assert (want-vegan yes))

   else (assert (want-vegan  no))
  )
  (assert (questions end))
)

(defrule end-questions "regla para pasar al siguiente modulo"
    (questions end)
    (menu-nuevo)
    =>
    (printout t "fin de las preguntas" crlf)
    (focus inferir_datos)
		(assert (menusGenerar))
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


(defrule insertaMenuses
	(declare (salience 10))
		(not (Menuses))
		=>
		(make-instance (gensym*) of AllMenus)
		(assert (Menuses))
		)

(defrule presupuesto-por-invitado "regla para establecer el presupuesto-por-invitado maximo"
		  (Evento Num_com ?numcom)
		  (Evento Presupuesto  ?presu)
		  (not (presupuesto-por-invitado))
		  =>
		  (assert (presupuesto-por-invitado (/ ?presu ?numcom)))
		  (assert (inference end))
)

; (defrule make_menu
;  (declare (salience 1))
;  (menu-nuevo)
;  ?mG <-(menusGenerar)
;  =>
;  (printout t "creando menu " crlf)
;  (make-instance  (gensym*) of Menu)
;  (printout t "menu creado " crlf)
;  (retract ?mG)
;
;  )
 (defrule addmembers-menu
	 	 (Menuses)
		 ?men <- (object (is-a AllMenus) )
		;  ?menu1  <- (object (is-a Menu))
		 ?plato1 <- (object (is-a Plato) (Orden Primero))
		 ?plato2 <- (object (is-a Plato) (Orden Segundo))
		 ?plato3 <- (object (is-a Plato) (Orden Postre))
		 =>
		 (printout t "creando menu " crlf)
		 (bind ?menu1 (make-instance  (gensym*) of Menu))
		 (printout t "menu creado " crlf)

		 (printout t "addmembers-menu" crlf)

		 (bind ?x (sumapreuComp (send ?plato1 get-Componentes)))
		 (bind ?y  (sumapreuComp (send ?plato2 get-Componentes)))
		 (bind ?z (sumapreuComp (send ?plato3 get-Componentes)))

		 ;(printout t "binded" crlf)
		 (send ?menu1 put-Primero ?plato1)
		 (send ?menu1 put-Segundo ?plato2)
		 (send ?menu1 put-Postre ?plato3)
		 (send ?menu1 put-PrecioMenu (+ ?x (+ ?y ?z)))

		 (printout t  crlf (menus-nombre ?menu1) crlf)

		 ;(bind $?M (send ?mem get-MenuP))
		 ;(bind $?M (insert$ ?M 1 ?menu1 ) )
		 ;(modify ?mem (menu $?M) )
		 ;(modify ?men (menu ?menu1))
		 (slot-insert$ ?men MenuP 1 ?menu1)
		 ;(assert (menusGenerar))


		 ;(printa-menu ?menu1)
		 )

(defrule finInferir "regla para pasar al modulo siguiente"
      (inference end)
      (menu-nuevo)
      =>
	  (printout t "Inferencia de datos hecha" crlf)
			(assert (Menuses))
			(focus filtrado)
)


;;;****************************
;;;
;;;***** Filtrade Module *****
;;;
;;;****************************

(defmodule filtrado
    (import MAIN ?ALL)
    (import make-questions ?ALL)
    (import inferir_datos ?ALL)
    (export ?ALL))





;;si un plato es mas caro que nuestro presupuesto-por-invitado lo descartamos
 ; (defrule descartando-platos-caros
 ;   (menu-nuevo)
 ;   ?miplato <- (object (is-a Plato) )
 ;   (> (preuplat ?miplato) presupuesto-por-inv1itado)
 ;   =>
 ;   (assert (DescartadoCaro ?miplato))
 ;   (printout t "eliminado por ser demasiado caro" (instance-name ?miplato) crlf)
 ;   (send ?miplato delete)
 ;   )
;;calcula el precio de un plato
; (deffunction preuplat (object (is-a Plato) (Componentes $?comp))
;   (bind ?x 0)
;   (loop-for-count (?i 1 (length$ ?comp)) do
;     (bind ?var (nth$ ?i ?comp))
;     (bind ?precio (?var get-Precio))
;     (bind ?x (+ ?x ?precio))
;   )
;  ?x
; )

;crea menuses
; (defrule addmenuses
; 	?putamierda <- (object(is-a Menu) (PrecioMenu ?y))
; 	(test (evaluable ?putamierda))
; 	(Menuses (menu $?x))
;   =>
; 	(slot-insert  (send ?putamierda get) 1 ?putamierda)
; )




;por ahora un Menu es solucion
 ; (defrule menu-valido
 ;     (presupuesto-por-invitado ?x)
 ;   (object(is-a Menu) (Primero ?p) (Segundo ?s) (Postre ?po) (PrecioMenu ?thresh))
 ;  ; (test(< (+ (send ?p get-Precio) (send ?s get-Precio) (send ?po get-Precio)) ?x ))
 ;    (test (< ?x ?thesh))
 ;     (menu-nuevo)
 ;   =>
 ;   (printout t "fin de Refinamiento" crlf)
 ;   (focus recomendaciones)
 ;   )


		(defrule menu-valido
			(declare (salience 10))
	     (presupuesto-por-invitado ?x)
	    ?putamierda <- (object(is-a Menu) (PrecioMenu ?y))
			(test (printout t "menuvalidar" crlf))
			(test (evaluable ?putamierda))
	    (test (> ?x ?y))
			;(printout t "test done")
	    (menu-nuevo)
	    =>
	    (printout t "fin de Refinamiento" crlf)
	    (focus recomendaciones)
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
