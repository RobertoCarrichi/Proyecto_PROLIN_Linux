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
read OPCION


case $OPCION in
	1) 
	clear
	echo "----------------| BÚSQUEDA DE ARCHIVO |----------------";
	echo "DIRECTORIO ACTUAL";
	echo "";
	echo "Ingresa archivo que quieres buscar: ";
	read ARCHIVO
	if ls | egrep $ARCHIVO
	then
		echo "Se ha encontrado en `pwd`/$ARCHIVO";

	else
		echo "No fue encontrado" 
	fi
	;;
	
	2)
	clear
	echo "----------------| BÚSQUEDA DE ARCHIVO |----------------";
	echo "OTRO DIRECTORIO";
	echo "";
	echo "Ingresa archivo que quieres buscar: ";
	read ARCHIVO
	echo "";
	echo "Ingresa ruta dodne quieras buscar: ";
	read DIRECTORIO;
	if ls $DIRECTORIO | egrep $ARCHIVO
	then
		
		echo "Se ha encontrado en : $DIRECTORIO/$ARCHIVO";
		echo ""
		echo `ls` $ARCHIVO
	else
		echo "No fue encontrado";
	fi
	;;
	
	*) 
	echo "Error";
	;;
esac

