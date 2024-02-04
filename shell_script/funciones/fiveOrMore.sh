#!/bin/bash
#
# Autor: David Pino merino
#
# Fecha: 29-01-2024
#


dirVacio=$(ls $2 2> /dev/null)
ficheros=$(ls $1/*.txt 2> /dev/null)

if [ $# != 2 ]; then
	echo "No se va a ejecutar el script porque no se ha puesto dos parámetros."
	exit
fi

if [ -f $1 ] >> /dev/null; then
	echo "El fichero existe, no se puede continuar"
	exit
fi

if [ ! -d $2 ] 2> /dev/null; then
	echo "El directorio no existe, no se puede continuar."
	exit
fi

if [ -z $dirVacio ] 2> /dev/null; then
	echo "El directorio está vacío, no se puede continuar"
	exit
fi

echo "Autor: David Pino Merino"
echo -e

for i in $ficheros; do
	if [ -f $i ]; then
	lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			echo $i
			echo $i >> $1
			
		fi
	fi
done


