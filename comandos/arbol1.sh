#!/bin/bash
trap '' 2 #Ignora los CtrC, ignora ^C 
trap "" TSTP #ignora la señal TSTP enviada por CtrlZ ignora ^Z

# Este script busca hacer una simulación del comando "tree".

RESET="\033[0m";
NEGRITA="\033[1m";
AMARILLO="\033[38;5;11m";
AZUL="\033[1;34m";
BLANCO="\033[1;36m";
AZULCLARO="\033[1;95m";
MORADO="\033[0;35m";
VERDE="\033[1;32m";
SALIR="6";

nivelcarpeta=$((0));
nivelarchivos=$((0));


# Función que recorrerá TODOS los archivos de la RUTA PRINCIPAL
arbol(){
	# $1 hará referencia al primer argumento, en este caso la ruta que ingresó el usuario.
	CONTENIDO_RUTA=$(ls $1);
	
	# SUB_RUTA indicará cada una de las rutas que tiene todo el conjunto de CONTENIDO_RUTA.
	for SUB_RUTA in $CONTENIDO_RUTA;
	do
		RUTACREDATA=$1/$SUB_RUTA;
		if [[ -d $RUTACREDATA ]]; then		
			if [[ $nivelcarpeta -eq 0 ]]; then
				echo -e "$AZULCLARO |__ $(basename $MORADO$RUTACREDATA)";
				nivelcarpeta=$(($nivelcarpeta +1));
			else
				nivelarchivos=$(($nivelarchivos+1));
				printf "$AZUL$AMARILLO  |";
				for (( i = 1; i <= nivelcarpeta; i++ )); do
					printf "$AZUL___";
				done
				echo -e "$MORADO$(basename $RUTACREDATA)";
			fi
			arbol $RUTACREDATA $(($contador+1));
		else
			for (( i = 0; i <= $nivelcarpeta; i++ )); do
				printf "  "
			done
			printf "$AMARILLO |";
			for (( i = 0; i <= $nivelcarpeta; i++ )); do
				printf "$AMARILLO __"
			done
			echo -e "$BLANCO $SUB_RUTA";
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
echo -e "$AZULCLARO $RUTA";

arbol $RUTA 0;
echo " ";
exit 0;

tap 2;
