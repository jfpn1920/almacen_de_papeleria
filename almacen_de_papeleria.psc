Algoritmo almacen_de_papeleria
	Definir opcion, totalArticulos Como Entero
	Definir i, j Como Entero
	Definir idBuscar Como Entero
	Definir siguienteID Como Entero
	Definir encontrado Como Logico
	Definir id Como Entero
	Definir articulo Como Caracter
	Definir categoria Como Caracter
	Definir cantidad Como Entero
	Definir precio Como Real
	Definir marca Como Caracter
	Definir proveedor Como Caracter
	Definir estado Como Caracter
	Dimension id[100]
	Dimension articulo[100]
	Dimension categoria[100]
	Dimension cantidad[100]
	Dimension precio[100]
	Dimension marca[100]
	Dimension proveedor[100]
	Dimension estado[100]
	totalArticulos <- 0
	siguienteID <- 1
	//-----------------------------------------//
	//--|menu_principal_almacen_de_papeleria|--//
	//-----------------------------------------//
	Repetir
		Escribir "menu principal almacen de papeleria"
		Escribir "1) registrar articulo"
		Escribir "2) editar articulo"
		Escribir "3) eliminar articulo"
		Escribir "4) buscar articulo"
		Escribir "5) listar articulos"
		Escribir "6) ver detalles del articulo"
		Escribir "7) salir"
		Escribir "seleccione una opcion:"
		Leer opcion
		Segun opcion Hacer
			//------------------------//
			//--|registrar_articulo|--//
			//------------------------//
			1:
				Escribir "registrar articulo"
				id[totalArticulos + 1] <- siguienteID
				siguienteID <- siguienteID + 1
				Escribir "id asignado: ", id[totalArticulos + 1]
				Escribir "ingrese el nombre del articulo:"
				Leer articulo[totalArticulos + 1]
				Escribir "ingrese la categoria:"
				Leer categoria[totalArticulos + 1]
				Escribir "ingrese la cantidad:"
				Leer cantidad[totalArticulos + 1]
				Escribir "ingrese el precio:"
				Leer precio[totalArticulos + 1]
				Escribir "ingrese la marca:"
				Leer marca[totalArticulos + 1]
				Escribir "ingrese el proveedor:"
				Leer proveedor[totalArticulos + 1]
				Escribir "ingrese el estado:"
				Leer estado[totalArticulos + 1]
				totalArticulos <- totalArticulos + 1
				Escribir "articulo registrado correctamente."
			//---------------------//
			//--|editar_articulo|--//
			//---------------------//
			2:
				Escribir "editar articulo"
				Si totalArticulos = 0 Entonces
					Escribir "no hay articulos registrados."
				SiNo
					Escribir "datos registrados a editar"
					Para i <- 1 Hasta totalArticulos Hacer
						Escribir id[i], " | ", articulo[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", marca[i], " | ", proveedor[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del articulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalArticulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "ingrese el nuevo nombre del articulo:"
							Leer articulo[i]
							Escribir "ingrese la nueva categoria:"
							Leer categoria[i]
							Escribir "ingrese la nueva cantidad:"
							Leer cantidad[i]
							Escribir "ingrese el nuevo precio:"
							Leer precio[i]
							Escribir "ingrese la nueva marca:"
							Leer marca[i]
							Escribir "ingrese el nuevo proveedor:"
							Leer proveedor[i]
							Escribir "ingrese el nuevo estado:"
							Leer estado[i]
							Escribir "articulo editado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un articulo con ese id."
					FinSi
				FinSi
			//-----------------------//
			//--|eliminar_articulo|--//
			//-----------------------//
			3:
				Escribir "eliminar articulo"
				Si totalArticulos = 0 Entonces
					Escribir "no hay articulos registrados."
				SiNo
					Escribir "datos registrados a eliminar"
					Para i <- 1 Hasta totalArticulos Hacer
						Escribir id[i], " | ", articulo[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", marca[i], " | ", proveedor[i], " | ", estado[i]
					FinPara
					Escribir "ingrese el id del articulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalArticulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Si i < totalArticulos Entonces
								Para j <- i Hasta totalArticulos - 1 Hacer
									id[j] <- id[j+1]
									articulo[j] <- articulo[j+1]
									categoria[j] <- categoria[j+1]
									cantidad[j] <- cantidad[j+1]
									precio[j] <- precio[j+1]
									marca[j] <- marca[j+1]
									proveedor[j] <- proveedor[j+1]
									estado[j] <- estado[j+1]
								FinPara
							FinSi
							totalArticulos <- totalArticulos - 1
							Escribir "articulo eliminado correctamente."
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un articulo con ese id."
					FinSi
				FinSi
			//---------------------//
			//--|buscar_articulo|--//
			//---------------------//
			4:
				Escribir "buscar articulo"
				Si totalArticulos = 0 Entonces
					Escribir "no hay articulos registrados."
				SiNo
					Escribir "ingrese el id del articulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalArticulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "datos encontrados"
							Escribir id[i], " | ", articulo[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", marca[i], " | ", proveedor[i], " | ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un articulo con ese id."
					FinSi
				FinSi
			//----------------------//
			//--|listar_articulos|--//
			//----------------------//
			5:
				Escribir "listar articulos"
				Si totalArticulos = 0 Entonces
					Escribir "no hay articulos registrados."
				SiNo
					Escribir "datos registrados"
					Para i <- 1 Hasta totalArticulos Hacer
						Escribir id[i], " | ", articulo[i], " | ", categoria[i], " | ", cantidad[i], " | ", precio[i], " | ", marca[i], " | ", proveedor[i], " | ", estado[i]
					FinPara
				FinSi
			//-------------------------------//
			//--|ver_detalles_del_articulo|--//
			//-------------------------------//
			6:
				Escribir "ver detalles del articulo"
				Si totalArticulos = 0 Entonces
					Escribir "no hay articulos registrados."
				SiNo
					Escribir "ingrese el id del articulo:"
					Leer idBuscar
					encontrado <- Falso
					Para i <- 1 Hasta totalArticulos Hacer
						Si id[i] = idBuscar Entonces
							encontrado <- Verdadero
							Escribir "detalles del articulo"
							Escribir "id: ", id[i]
							Escribir "articulo: ", articulo[i]
							Escribir "categoria: ", categoria[i]
							Escribir "cantidad: ", cantidad[i]
							Escribir "precio: ", precio[i]
							Escribir "marca: ", marca[i]
							Escribir "proveedor: ", proveedor[i]
							Escribir "estado: ", estado[i]
						FinSi
					FinPara
					Si encontrado = Falso Entonces
						Escribir "no se encontró un articulo con ese id."
					FinSi
				FinSi
			//------------------------------//
			//--|salir_del_menu_principal|--//
			//------------------------------//
			7:
				Escribir "gracias por utilizar el almacen de papeleria."
			De Otro Modo:
				Escribir "opción no válida."
		FinSegun
	Hasta Que opcion = 7
FinAlgoritmo