#!/bin/bash

# Función que genera el arbolito
arbolito(){
	if [ $# -gt 0 ]
	    then
	        echo Con argumentos
	    else
	        echo Sin argumentos
	fi
}
#echo $RUTA;
CONTENIDO=$(find ./ -depth);
echo $CONTENIDO;

for UNO in $CONTENIDO
do
	$NAME=$(basename $UNO);
	echo "El nombre del archivo en $UNO es: $NAME";
	arbolito(UNO);
done

exit 0;


#if [ $# -eq 0 ]; then
#	RUTA="./";
#	echo "No has colocado una ruta, la ruta será $RUTA.";
#elif[ $# -eq 1 ] then
#	RUTA=$1;
#	echo "La ruta es: $RUTA";
#else
#	echo "Ocurrió un error";
#fi




