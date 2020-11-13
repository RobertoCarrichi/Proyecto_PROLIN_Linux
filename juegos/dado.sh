#!/bin/bash

trap '' 2;
trap '' 20;

RESET="\033[0m";
NEGRITA="\033[1m";
AMARILLO="\033[38;5;11m";
AZUL="\033[1;34m";
BLANCO="\033[1;36m";
AZULCLARO="\033[1;95m";
MORADO="\033[0;35m";
VERDE="\033[1;32m";
imprimirDado(){
	case $1 in
		1)	echo -e "\t  _____ ";
			echo -e "\t |     |";
			echo -e "\t |  ■  |";
			echo -e "\t |     |";
			echo -e "\t  ¯¯¯¯¯ ";
			;;
		2)  echo -e "\t  _____ ";
			echo -e "\t |    ■|";
			echo -e "\t |     |";
			echo -e "\t |■    |";
			echo -e "\t  ¯¯¯¯¯ ";
			;;
		3)  echo -e "\t  _____ ";
			echo -e "\t |    ■|";
			echo -e "\t |  ■  |";
			echo -e "\t |■    |";
			echo -e "\t  ¯¯¯¯¯ ";
			;;
		4)  echo -e "\t  _____ ";
			echo -e "\t |■   ■|";
			echo -e "\t |     |";
			echo -e "\t |■   ■|";
			echo -e "\t  ¯¯¯¯¯ ";
			;;
		5)  echo -e "\t  _____ ";
            echo -e "\t |■   ■|";
			echo -e "\t |  ■  |";
			echo -e "\t |■   ■|";
			echo -e "\t  ¯¯¯¯¯ ";
			;;
		6)  echo -e "\t  _____ ";
			echo -e "\t |■ ■ ■|";
			echo -e "\t |      |";
			echo -e "\t |■ ■ ■|";
			echo -e "\t  ¯¯¯¯¯ ";
			;;
	esac
}

empiezaElJuego(){
	resultados[0]=$((1));
	resultados[1]=$((2));
	resultados[2]=$((3));
	resultados[3]=$((4));
	resultados[4]=$((5));
	resultados[5]=$((6));
	echo -e "\n\t $AMARILLO Comienza el juego$RESET";
	echo -e "\n$NEGRITA$AZULCLARO Lanzando dado...";
	sleep 3s;

	resultado=$(( $RANDOM % 5 ));
	final=${resultados[resultado]};
	printf "\n $NEGRITAS$BLANCO ¡Listo! Es tu hora de elegir. ¿Qué número crees que salió? [1-6] \n > ";
	read eleccion;
	
	# imprimirDado $final;
	imprimirDado $final;

	if [[ "$final" = "$eleccion" ]]; then
		echo -e "\n $NEGRITA$MORADO HAS GANADO! $BLANCO Hoy estás de$AMARILLO suerte.\n";
	else	
		echo -e "\n $VERDE ¡HAS PERDIDO!$BLANCO Había salido un $AZULCLARO$final$BLANCO, suerte para la próxima.\n";
	fi
}


clear;

echo -e "\t$NEGRITA$AZUL################################################$RESET";
echo -e "\t$NEGRITA$AZUL#$BLANCO      ¡ BIENVENIDO A $CYAN\"ADIVINA EL DADO\"$BLANCO !$AZUL      #$RESET";
echo -e "\t$NEGRITA$AZUL################################################$RESET";
echo -e "\n$NEGRITA$BLANCO Esto es sencillo, yo lanzo un dado y después tu tratas de adivinar.\n";
printf "$BLANCO  ¿Estás listo? [Si/No]\n > ";
read opcion;
while [[ $opcion = "Si" || $opcion = "si" || $opcion = "S" || $opcion = "s" || $opcion = "SI" ]]; do
	empiezaElJuego;
	printf "$NEGRITA$BLANCO  ¿Quieres probar tu suerte otra vez? [Si/No]\n > ";
	read opcion;
	if [[ ! $opcion = "Si" || $opcion = "si" || $opcion = "S" || $opcion = "s" || $opcion = "SI" ]]; then
		break;
	fi
done
echo -e "\n\t$NEGRITA$AZUL################################################$RESET";
echo -e "\t$NEGRITA$AZUL#$BLANCO      ¡ Gracias por utilizar el juego ! $AZUL      #$RESET";
echo -e "\t$NEGRITA$AZUL################################################$RESET\n";