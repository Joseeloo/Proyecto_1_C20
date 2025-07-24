// Proyecto 1; Modulo 1; JE.
Algoritmo sistemaCostos
	Definir precioProducto, cantidadProducto, opDesc, cuponDesc, impuesto, cantDesc Como Entero
	Definir cFijo, cKG, i, aCup Como Entero
	Definir peso, precioDesc, precioImp, subTotal Como Real
	Definir dest Como Cadena
	Definir tieneCupon Como Caracter
	
	impuesto <- 12
	cFijo <- 10
	cKG <- 2
	
	Escribir "Ingrese el precio del producto: "
	Leer precioProducto
	Escribir "Ingrese la cantidad del producto: "
	Leer cantidadProducto
	Escribir "Ingrese el peso del paquete (kg): "
	Leer peso
	Escribir "Ingrese el destino del envio: "
	Leer dest
	dest <- Mayusculas(dest)
	
	Dimension aCup[4]
	aCup[1] <- 10
	aCup[2] <- 20
	aCup[3] <- 30
	aCup[4] <- 40
	
	Escribir "¿Tienes un cupon de descuento? (S/N): "
	Leer tieneCupon
	tieneCupon <- Mayusculas(tieneCupon)
	
	Si tieneCupon = "S" Entonces
		Escribir "Seleccione un cupón de descuento:"
		Para i <- 1 Hasta 4 Hacer
			Escribir i, ". Cupón ", aCup[i], "%"
		FinPara
		Escribir "5. Ingresar otro valor personalizado (%)"
		Leer opDesc
		Si opDesc >= 1 Y opDesc <= 4 Entonces
			cuponDesc <- aCup[opDesc]
		SiNo
			Si opDesc = 5 Entonces
				Escribir "Ingrese el cupon de descuento(Ej: 12): "
				Leer cuponDesc
				Si cuponDesc < 0 O cuponDesc > 100 Entonces
					Escribir "Cupón inválido. Se aplicará 0%."
					cuponDesc <- 0
				FinSi
			SiNo
				Escribir "Opción no válida. Se aplicará 0%."
				cuponDesc <- 0
			FinSi
		FinSi
	FinSi
	
	Si cantidadProducto > 50 Entonces
		cantDesc <- 8
	SiNo
		Si cantidadProducto > 25 Entonces
			cantDesc <- 5
		SiNo
			Si cantidadProducto > 10 Entonces
				cantDesc <- 3
			SiNo
				cantDesc <- 0
			FinSi
		FinSi
	FinSi
	
	precioDesc <- precioProducto * (1 - cuponDesc / 100)
	precioImp <- precioDesc * (1 + impuesto / 100)
	subTotal <- precioImp * (1 - cantDesc / 100)
	subTotal <- subTotal * cantidadProducto
	costoEnvio <- cFijo + (cKG * peso)
	totalFinal <- subTotal + costoEnvio
	
	Escribir ""
	Escribir "#===============================#"
	Escribir "|====== RESUMEN DE COMPRA ======|"
	Escribir "#===============================#"
	Escribir "Precio original por unidad: $", precioProducto
	Escribir "Descuento por cupón aplicado: ", cuponDesc, "%"
	Escribir "Descuento por cantidad aplicada: ", cantDesc, "%"
	Escribir "Impuesto aplicado: ", impuesto, "%"
	Escribir "Costo total por productos (con descuentos e impuestos): $", subTotal
	Escribir "Costo de envío (Destino: ", dest, "): $", costoEnvio
	Escribir "#-----------------------------------------#"
	Escribir "Costo total final a pagar: $", totalFinal
	Escribir "#=========================================#"
	
FinAlgoritmo
