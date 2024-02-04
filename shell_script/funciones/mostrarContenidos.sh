#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 30-01-2024
#
# Realiza un shell script que muestre por pantalla lo siguiente:
# El contenido de la carpeta /etc.
# Y diga cuántos archivos tiene.
#
# Después, muestra un mensaje "pulse una tecla para continuar", se pide la entrada de la tecla, y debe hacer lo mismo.
# con la carpeta /sbin y la carpeta /bin.
#
#

function mostrarContenidoEtc {
	ls -s --sort=size /etc
	echo -e
	find /etc | wc -l
}

function mostrarContenidoSbin {
	ls -s --sort=size /sbin
	echo -e
	find /sbin | wc -l
}

function mostrarContenidoBin {
	ls -s --sort=size /bin
	echo -e
	find /bin | wc -l
}

function pausa {
	read -n1 -p "Pulse una tecla para continuar."
}

if [ ! $UID == 0 ]; then
	echo "No eres root, no puedes ejecutar el script."
	exit
fi


echo "Mostrando contenido de la carpeta /etc y el numero de sus archivos."
mostrarContenidoEtc
echo -e
pausa

echo "Mostrando contenido de la carpeta /sbin y el numero de sus archivos."
mostrarContenidoSbin
pausa

echo "Mostrando contenido de la carpeta /bin y el número de sus archivos."
mostrarContenidoBin
pausa
