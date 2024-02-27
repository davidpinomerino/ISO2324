"""
Autor:David Pino Merino
Fecha: 26-02-2024
"""
import os

"""import cpuinfo"""

os.system("clear")
if os.getuid() != 0:
    print("No eres root, ejecuta como root.")
    exit()
else:
    print("1.- Mostrar info de CPU y SSOO.")
    print("2.- Pedir usuario. Si no existe, se creará.")
    print("3.- Pedir directorio. Si no existe, se creará.")
    print("4.- Salir")
    print()
    opcion = int(input("Escoge una de las cuatro opciones: "))

    if opcion == 1:
        print("Mostrando informacion de sistema operativo y CPU...")
        print()
        for i in os.uname():
            print(i)
        print("Numero de CPUs:", os.cpu_count())
    elif opcion == 2:
        os.system("clear")
        fichero = open("/etc/passwd", "r")
        listaUsuarios = fichero.readlines()
        enc = False
        user = input("Introduce el nombre de un usuario: ")
        for i in listaUsuarios:
            if user in i:
                enc = True
        if enc == True:
            print("El usuario " + user + " ya existe.")
        else:
            print("El usuario no existe.")
            print("Creando...")
            os.system("useradd -m " + user)
    elif opcion == 3:
        directorio = input("Escribe un directorio: ")
        existente = os.path.exists(directorio)
        if existente == 1:
            print("Existe.")
        else:
            print("NO")
            print("Creando...")
            os.mkdir(directorio)
    elif opcion == 4:
        print("Saliendo del script...")
        exit()
