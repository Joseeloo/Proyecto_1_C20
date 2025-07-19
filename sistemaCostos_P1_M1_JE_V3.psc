Algoritmo sistemaCostos
	Definir precioProducto, cantidadProducto, opDesc, cuponDesc, impuesto, cantDesc Como Entero
	Definir cFijo, cKG, i, aCup Como Entero
	Definir peso, precioDesc, precioImp, subTotal Como Real
	Definir dest Como Cadena
	
	impuesto <- 12
	cFijo <- 10
	cKG <- 2
	// PReguntas si es que tiene decuento si es si, poner los decuestos si dice que no sierra el si.
	// destino y peso generan costo d eenvio
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
	aCup[0] <- 10
	aCup[1] <- 20
	aCup[2] <- 30
	aCup[3] <- 0
	
	Escribir "Seleccione un cupón de descuento:"
	Para i <- 0 Hasta 3 Hacer
		Escribir i + 1, ". Cupón ", aCup[i], "%"
	FinPara
	Escribir "5. Ingresar otro valor personalizado (%)"
	Leer opDesc
	Si opDesc >= 1 Y opDesc <= 4 Entonces
		cuponDesc <- aCup[opDesc - 1]
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
	Escribir "Print test cupon: ", cuponDesc
	
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
	Escribir "Print test cantidad descuento: ", cantDesc
	// Calcular precio con descuento de cupón
	precioDesc <- precioProducto * (1 - cuponDesc / 100)
	Escribir "Print test precioDesc: ", precioDesc
	// Calcular impuestos
	precioImp <- precioDesc * (1 + impuesto / 100)
	Escribir "Print test precioImp: ", precioImp
	// Aplicar descuento por cantidad
	subTotal <- precioImp * (1 - cantDesc / 100)
	Escribir "Print test subTotal: ", subTotal
	// Costo total por productos (multiplicado por la cantidad)
	subTotal <- subTotal * cantidadProducto
	Escribir "Print test subTotal: ", subTotal
	// Costo de envío
	costoEnvio <- cFijo + (cKG * peso)
	Escribir "Print test costoEnvio: ", costoEnvio
	// Costo total final
	totalFinal <- subTotal + costoEnvio
	Escribir "Print test totalFinal: ", totalFinal
	
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
