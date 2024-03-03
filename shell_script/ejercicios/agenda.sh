#!/bin/bash
#
#
#

while true; do
	read -p "Selecciona una de las siguientes opciones (0 - 4): " opcion
		case $opcion in
			1)
				echo -e
				echo "Listado de agenda."
			;;

			2)
				echo -e
				echo "Buscar contacto."
			;;

			3)
				echo -e
				echo "Nuevo contacto"
			;;

			4)
				echo -e
				echo "Borrar contacto"
			;;

			0)
				echo -e
				echo "Salir"
				exit
			;;

			"*")
				echo -e
				echo "Opcion no valida. Introduzca de nuevo."
			;;
		esac
done
