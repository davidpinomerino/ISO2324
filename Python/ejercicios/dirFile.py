"""
Autor: David Pino Merino
Fecha: 01-03-2024
"""

import os

file = open("rutas.txt", "r")
readFile=file.readlines()
ficheros = os.path.isfile(readFile)
print(readFile)