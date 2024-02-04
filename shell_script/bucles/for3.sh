#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 22-01-2024

read -p "Introduce una ruta de directorio: " directorio

if [ -d $directorio ]; then
	for i in $directorio/*; do
		du -hs $i
	done
else
	echo "No es un directorio."
	exit
fi
