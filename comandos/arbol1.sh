#!/bin/bash

# Este script busca hacer una simulación del comando "tree".

# Función que genera el arbolito
arbol(){
	# $1 Indica a la RUTA.
	# $2 Indica el contenido de la ruta.
	for ARCHIVO in $2
	do
		if [[ "$ARCHIVO" -eq "$1" ]]; 
		then
			echo "ALTO, ¡ SON IGUALEEEEEEES !";
		else 
			arbolito $ARCHIVO;
		fi
	done
}
arbolito(){
    # Utilizamos una variable local que tenga un alcance SOLO DENTRO
    # de la función.

	local CONTENIDO_LOCAL=$(find $1);
	if [ -d $1 ];
	then
		# Si se cumple la condición, significa que debe crearse otro "árbol".
		echo "-> $(basename $1)"; # Se expresa en pantalla que es un directorio. 
		
		# Ya que es un directorio, comenzará de nuevo el programa pero con una nueva ruta.
		arbolito $CONTENIDO_LOCAL; 
	else
		# Esto indica que se trata de un fichero, por lo tanto solo se imprime.
		# Se imprimirá solo el nombre que tiene el fichero, no la ruta completa.
		echo "----> $(basename $1)";
	fi
}

# Aquí comienza la ejecución del arbolito.
echo " ";
if [ "$#" -eq 0 ]; then
	# Ya que el usuario no dió una ruta, se ejecutará en la ruta actual.
	RUTA=".";
else
	# $1 Hace referencia al primer argumento enviado por la consola.
	RUTA=$1;
fi;

CONTENIDO_RUTA=$(find "$RUTA" -depth);
echo $CONTENIDO_RUTA;
# Se envía la ruta y su contenido.
arbol $RUTA $CONTENIDO_RUTA;

exit 0;
