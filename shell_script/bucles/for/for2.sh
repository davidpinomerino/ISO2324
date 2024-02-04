#!/bin/bash
#
#
#
#

if [ $UID != 0 ]; then
	echo -e
	echo "No eres root."
	exit
fi

for i in $*; do
	if [ ! -d $i ]; then
		echo -e
		echo "No existe"
		exit
	else
		for c in $i/*; do
			if [ ! -s $c ]; then
				echo -e
				echo "Ficheros vacíos: $c"
			fi
		done
	fi
done
