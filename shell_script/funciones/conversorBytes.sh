#!/bin/bash
#
# Autor: David Pino Merino
#
# Fecha: 30-01-2024
#
#
# Realiza un script al que se le pase por parámetro un número de bytes y lo convierte en kilobytes y megabytes y gigabytes.
#
#

kilobytes=$(($1 / 1024))
megabytes=$(($kilobytes / 1024))
gigabytes=$(($megabytes / 1024))

echo "Conversor de unidades."
echo "Bytes"
echo -e

echo "Conversión de $1."
echo -e
echo "Kilobytes: $kilobytes"
echo "Megabytes: $megabytes"
echo "Gigabytes: $gigabytes"
