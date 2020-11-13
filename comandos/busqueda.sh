#!/bin/bash

echo "----------------| BÚSQUEDA DE ARCHIVO |----------------";
echo "";
echo "¿Dónde quiere que se realice la búsqueda?";
echo "";
echo "1 Directorio actual:" ;
pwd
echo "";
echo "2 Buscar en otro directorio";
echo "";
echo "Selecciona una opción: " 
read OPCION 		#lee variable opcion


case $OPCION in 	#en caso de que OPCION sea...
	1) 	#Tecleando 1...
	clear
	echo "----------------| BÚSQUEDA DE ARCHIVO |----------------";
	echo "DIRECTORIO ACTUAL";
	echo "";
	echo "Ingresa archivo que quieres buscar: ";
	read ARCHIVO 	#lee variable archivo
	if ls | egrep $ARCHIVO #	ls(lista los archivos) egrep(busca la palabra que ingresó dentro de la variable ARCHIVO
	then 	#Si se encuentra listado el archivo ...
		echo "Se ha encontrado en `pwd`/$ARCHIVO"; 	#Imprimir directorio actual y el nombre del archivo 

	else 	#Si no se encuentra listado el archivo... (``)se usa para ejecutar un comando dentro de una línea de texto
		echo "No fue encontrado" 
	fi 	#fin si
	;; 	#cerrar primer case
	
	2) #Tecleando 2...
	clear
	echo "----------------| BÚSQUEDA DE ARCHIVO |----------------";
	echo "OTRO DIRECTORIO";
	echo "";
	echo "Ingresa archivo que quieres buscar: ";
	read ARCHIVO #lee variable archivo
	echo "";
	echo "Ingresa ruta donde quieras buscar: ";
	read DIRECTORIO; #Lee directorio
	if ls $DIRECTORIO | egrep $ARCHIVO #ls(lista los archivos) del DIRECTORIO ingresado y egrep(busca la palabra que ingresó dentro de la variable ARCHIVO)
	then
		echo "Se ha encontrado en : $DIRECTORIO/$ARCHIVO"; #Muestra directorio y archivo como una sola dirección
		echo ""
#		echo `ls` $ARCHIVO
	else
		echo "No fue encontrado";
	fi
	;;
	
	*) 
	echo "Error";
	;;
esac

