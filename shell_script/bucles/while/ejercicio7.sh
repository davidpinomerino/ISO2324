#!/bin/bash
#
#Autor: David Pino Merino
#
#Fecha: 19-01-2024
#
#

echo -e
echo "Sacar el factorial de un número."
echo -e

i=1
factorial=1

if [ -z $1 ]; then
	echo "Error. No has introducido nada."
	exit
fi

while [ $i -le $1 ]; do
	factorial=$(($factorial * $i))
	i=$(($i + 1))
	echo -e
	echo "El factorial de $1 es $factorial."
done
