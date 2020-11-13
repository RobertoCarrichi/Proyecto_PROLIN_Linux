#!/bin/bash
trap '' 2 #Ignora los CtrC, ignora ^C 
trap "" TSTP #ignora la señal TSTP enviada por CtrlZ ignora ^Z

# Este script busca hacer una simulación del comando "tree".

# Función que recorrerá TODOS los archivos de la RUTA PRINCIPAL
nivelcarpeta=$((0));
nivelarchivos=$((0));
arbol(){
	# $1 hará referencia al primer argumento, en este caso la ruta que ingresó el usuario.
	CONTENIDO_RUTA=$(ls $1);
	
	# SUB_RUTA indicará cada una de las rutas que tiene todo el conjunto de CONTENIDO_RUTA.
	for SUB_RUTA in $CONTENIDO_RUTA;
	do
		RUTACREATA=$1/$SUB_RUTA;
		if [[ -d $RUTACREATA ]]; then		
			if [[ $nivelcarpeta -eq 0 ]]; then
				echo "|__ $(basename $RUTACREATA)";
				nivelcarpeta=$(($nivelcarpeta +1));
			else
				nivelarchivos=$(($nivelarchivos+1));
				printf "  |";
				for (( i = 1; i <= nivelcarpeta; i++ )); do
					printf "___";
				done
				echo " $(basename $RUTACREATA)";
			fi
			arbol $RUTACREATA $(($contador+1));
		else
			for (( i = 0; i <= $nivelcarpeta; i++ )); do
				printf "  "
			done
			printf "|";
			for (( i = 0; i <= $nivelcarpeta; i++ )); do
				printf "__"
			done
			echo "$SUB_RUTA";
		fi

	done;
}

	##############################################
	#  Aquí comienza la ejecución del arbolito.  #
	##############################################

echo " ";
RUTA=;
if [ "$#" -eq 0 ]; then
	# Ya que el usuario no dió una ruta, se ejecutará en la ruta actual.
	RUTA=".";
else
	# $1 Hace referencia al primer argumento enviado por la consola.
	RUTA=$1;
fi;

# Se envía la ruta y su contenido.
echo $RUTA;

arbol $RUTA 0;

exit 0;
tap 2
