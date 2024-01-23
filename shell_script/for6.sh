#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 23-01-2024
#
#

if [ $* != 2 ]; then
	echo "No se han introducido dos parametros, no se puede continuar ejecutando"
	exit
fi

if find "$1.txt" >> /dev/null; then
	echo "El fichero ya existe, no se puede continuar ejecutando."
	exit
else
	for ((i=0; i<$2; i++)); do
		echo -e
		echo "Selecciona una opción: "
		echo "S: Suma"
		echo "R: Resta"
		echo "M: Multiplicacion"
		echo "D: Division"
		echo "X: Salir"
		read opcion
		case $opcion in
			"S")
				read -p "Introduce un numero: " numero1
				read -p "Introduce otro: " numero2
				echo -e
				suma=$(($numero1 + $numero2))
				echo "Operación $numero1 + $numero2: $suma" >> ./$1.txt
			;;
			"R")
				read -p "Introduce un numero: " numero1
				read -p "Introduce otro numero: " numero2
				echo -e
				resta=$(($numero1 - $numero2))
				echo "Operación $numero1 - $numero2: $resta" >> ./$1.txt
			;;
			"M")
				read -p "Introduce un numero: " numero1
                                read -p "Introduce otro numero: " numero2
				echo -e
				multiplicacion=$(($numero1 * $numero2))
				echo "Operacion $numero1 x $numero2: $multiplicacion" >> ./$1.txt
			;;
			"D")
				read -p "Introduce un numero: " numero1
                                read -p "Introduce otro numero: " numero2
				echo -e
				division=$(($numero1 / $numero2))
				echo "Operacion $numero1 / $numero2: $division" >> ./$1.txt
			;;
			"X")
				echo -e
				echo "Saliendo del programa..."
				exit
			;;
			"*")
				echo -e
				echo "Saliendo del programa..."
				exit
			;;
		esac
	done
	echo -e
	ruta=$(ls $PWD/$1.txt)
	echo $ruta
	echo -e
	echo "Contenido del fichero:"
	cat ./$1.txt
fi

