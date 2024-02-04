#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 31-01-2024
#
# Realiza un menú con 5 opciones:
# 1.- Contar el número de alumnos presentados.
# 2.- Contar el número de aprovados.
# 3.- Contar el número de suspensos.
# 4.- Contar los nombres de los alumnos presentados.
# 5.- Salir.
#

function conteoAlumnos {
	conteoAlumnos=$(cat ./alumnos_examen.txt | cut -d " " -f2 | grep -v "Sin" | wc -l)
	echo "Este es el número de alumnos presentados: $conteoAlumnos"
}

function conteoAprovados {
	conteoAprovados=$(cat ./alumnos_examen.txt | cut -d " " -f2 | grep "Apto" | wc -l)
	echo El numero de aprovados es: $conteoAprovados
}

function conteoSuspensos {
	conteoSuspensos=$(cat ./alumnos_examen.txt | cut -d " " -f2 | grep "No" | wc -l)
	echo El numero de suspensos es: $conteoSuspensos
}

function conteoPresentados {
	conteoNoPresentados=$(cat ./alumnos_examen.txt | grep "Sin" | cut -d " " -f1)
	echo "Personas no presentadas"
	echo "$conteoNoPresentados"
}

while true; do

	echo "1.- Contar el número de alumnos presentados."
	echo "2.- Contar el número de aprovados."
	echo "3.- Contar el número de suspensos."
	echo "4.- Contar los nombres de los alumnos presentados."
	echo "5.- Salir."
	read -p "Elige una opcion: " opcion

	case $opcion in
		"1")
			echo -e
			conteoAlumnos
			echo -e
		;;
		"2")

			echo -e
			conteoAprovados
			echo -e
		;;
		"3")
			echo -e
			conteoSuspensos
			echo -e
		;;
		"4")
			echo -e
			conteoPresentados
			echo -e
		;;
		"5")
			echo -e
			echo "Saliendo..."
			echo -e
			exit
		;;
	esac
done
