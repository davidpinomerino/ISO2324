#!/bin/bash
#
#
#
#

if [ $UID != 0 ]; then
	echo "No eres root"
	exit
fi

for i in /home/*; do
	test -e $i/*.bak
	rm -f $i/*.bak
done
