#!/bin/bash
#
#
#

while true; do
	echo -e
	read -p "Introduzca contraseña: " pass1
	echo -e
	read -p  "Introduzca de nuevo la contraseña: " pass2
	if [ $pass1 == $pass2 ]; then
		echo -e
		echo "Contraseña correcta"
		break
	else
		echo -e
		echo "Vuelve a introducir las contraseñas"
	fi
done
