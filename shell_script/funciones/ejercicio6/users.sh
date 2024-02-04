#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 02-02-2024
#
#

IFS=":"
while read user x uid gid g home shell; do
	if [ $uid > 1000 ]; then
		echo $user - $uid
	fi
done < /etc/passwd


#usersList=$(cat /etc/passwd | cut -d ":" -f1)
#UIDList=$(cat /etc/passwd | cut -d ":" -f3)

#for i in $usersList; do
#	for z in $UIDList; do
#		if [ $z > 1000 ]; then
#			echo $i - $z
#		fi
#	done	
#done
