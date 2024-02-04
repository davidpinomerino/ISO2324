#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 22-01-2024
#
#

read -p "Introduce un número: " numero

for ((i=0; i<=$numero; i=i++)); do
	result=$(($numero * $i))
	echo "$result"
done
