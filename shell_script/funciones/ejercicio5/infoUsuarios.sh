#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 31-01-2024
#
# Desarrolla un shell script que dado un nombre de login de usuario determine si existe en el sistema.
# Si existe, se debe mostar por pantalla el nombre de usuario, el UID, el grupo primario y grupo secundario
# si los tiene y la shell del sistema.
# 
#
#

read -p "Introduce un nombre de usuario: " usuario

nombreUsuario=$(cat /etc/passwd | cut -d ":" -f1 | grep $usuario)
usuarioUID=$(cat /etc/passwd | cut -d ":" -f3 | grep $usuario)

if [ $nombreUsuario ]; then
	echo "El usuario existe"
	echo -e
	echo "Su UID es: $usuarioUID"
else
	echo "El usuario no existe"
fi
