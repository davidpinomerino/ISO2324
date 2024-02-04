#!/bin/bash
#
#
#

parameter=$1
i=1

if [ -z $parameter ]; then
	echo -e
	echo "No has introducido nada. El script va a terminar"
	exit
fi

while [ $i != $parameter ] ; do
	resto=$(($parameter % $i))
	if [ $resto == 0 ]; then
		echo $i
	fi
	i=$(($i + 1))
done
