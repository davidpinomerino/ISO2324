"""
Autor: David Pino Merino
Fecha: 01-03-2024
"""

import os

"""if os.getuid() != 0:
    print("Ejecuta este script como root.")
    exit()"""

fileArray = []
directoryArray = []

file = open("rutas.txt", "r")
readFile = file.readlines()

for i in readFile:
    r = i.strip()
    if os.path.isfile(r):
        fileArray.append(r)
    else:
        directoryArray.append(r)

print("1.- Eliminar fichero")
print("2.- Mostrar información de un fichero")
print("3.- Copiar fichero")
print("4.- Mostrar lista.")

opcion = int(input("Introduce una opcion (1,2,3,4,5): "))

if opcion == 1:
    print(fileArray)
    opcion = input("Escribe el nombre completo de un fichero que quieras eliminar: ")
    print("Eliminando", opcion, "...")
if opcion == 2:
    print(directoryArray)
    opcion = input("Escribe el nombre de un directorio para ver su información: ")
    os.system("ls -la " + opcion)
if opcion == 3:
    print(fileArray)
    opcion = input("Escribe el nombre del fichero a copiar: ")
    pegar = input("Escribe el nombre del sitio donde se pegará el fichero: ")
    os.system("cp " + opcion + " " + pegar)
if opcion == 4:
    opcion=input("Elige qué lista quieres mostrar (ficheros, directorios): ")
    ficheros=fileArray
    directorios=directoryArray
    if opcion == ficheros:
        print("")
        print(ficheros)
    else:
        print("")
        print(directorios)
