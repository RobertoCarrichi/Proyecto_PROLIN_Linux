#!/bin/bash
trap '' 2 #Ignora los CtrC, ignora ^C 
trap "" TSTP #ignora la señal TSTP enviada por CtrlZ ignora ^Z

RESET="\033[0m";
NEGRITA="\033[1m";
AMARILLO="\033[38;5;11m";
AZUL="\033[1;34m";
BLANCO="\033[1;36m";
AZULCLARO="\033[1;95m";
MORADO="\033[0;35m";
VERDE="\033[1;32m";
ROJO='\033[0;31m';
CYAN='\033[0;36m'

#################################################################3
tirarDado(){
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

#########################################################################################3
carrera(){
	case $1 in
		0)	echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		1)  echo -e "* _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		2)	echo -e "_ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		3)  echo -e "_ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
        4)	echo -e "_ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		5)  echo -e "_ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		6)	echo -e "_ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		7)  echo -e "_ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
        8)  echo -e "_ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		9)	echo -e "_ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		10) echo -e "_ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		11)  echo -e "_ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		12)	echo -e "_ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		13) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
        14)	echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		15) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		16)	echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _ _";
            echo ""
			;;
		17) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _ _";
            echo ""
			;;
        18) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _ _";
            echo ""
			;;
		19)	echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _ _";
            echo ""
			;;
		20) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _ _";
            echo ""
			;;
        21) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _ _";
            echo ""
			;;
		22)	echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _ _";
            echo ""
			;;
		23) echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _ _";
            echo ""
			;;
        24)	echo"_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ * _";
            echo ""
			;;
		25) echo -e "\n8****8                                    8  ";
            echo -e "8    * eeeee eeeee eeeee eeeee eeeee eeee 88 ";
            echo -e "8e     8   8 8   8 8   8 8   *   8   8    88 ";
            echo -e "88  ee 8eee8 8e  8 8eee8 8eeee   8e  8eee 88 ";
            echo -e "88   8 88  8 88  8 88  8    88   88  88      ";
            echo -e "88eee8 88  8 88  8 88  8 8ee88   88  88ee 88 ";
            echo -e "":
            echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ *";
            echo ""
			;;
        *)  echo -e "\n8****8                                    8  ";
            echo -e "8    * eeeee eeeee eeeee eeeee eeeee eeee 88 ";
            echo -e "8e     8   8 8   8 8   8 8   *   8   8    88 ";
            echo -e "88  ee 8eee8 8e  8 8eee8 8eeee   8e  8eee 88 ";
            echo -e "88   8 88  8 88  8 88  8    88   88  88      ";
            echo -e "88eee8 88  8 88  8 88  8 8ee88   88  88ee 88 ";
            echo -e "";
            echo -e "_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ *";
            ;;
	esac
}

##############################################################################
empiezaElJuego(){
	resultados[0]=$((1));
	resultados[1]=$((2));
	resultados[2]=$((3));
	resultados[3]=$((4));
	resultados[4]=$((5));
	resultados[5]=$((6));
    
    echo -e "\n\n";                                                                                                                                                                         
    echo -e "   $CYAN\t\t\t ||            ||           ||          ";
    echo -e "   $CYAN\t\t\t...  .. ...   ...    ....  ...    ...   ";
    echo -e "   $CYAN\t\t\t ||   ||  ||   ||  .|   ''  ||  .|  '|. ";
    echo -e "   $CYAN\t\t\t ||   ||  ||   ||  ||       ||  ||   || ";
    echo -e "   $CYAN\t\t\t.||. .||. ||. .||.  '|...' .||.  '|..|' ";

    #carrera $fin;                                    
    jugador=0;
    computadora=0;
    fin=25;

    while [[ $jugador -le 25 || $jcomputadora -le 25 ]]; do
        printf "\n\n";
        echo -e "$CYAN###################################################################################"
        printf "$CYAN\t\t\t\tPISTA"
        echo -e "$VERDE \n\n Pista jugador 1\t $(carrera $jugador;)";
        echo -e "$CYAN\n\tVS";
        echo -e "$ROJO\n\nPista jugador 2\t\t $(carrera $computadora;)";
        
        if [[ $jugador -ge 25 || $computadora -ge 25 ]]; then
            break;
        fi
        printf "\nEspera 3 segundos...";
        sleep 3s;
        clear
        echo -e "$VERDE\n Preciona M para tirar dado del Jugador 1";
        read opcionJugador


        while [[ $opcionJugador = "M" || $opcionJugador = "m" ]]; do
            echo -e "$VERDE\n Lanzando dado jugador 1";
            sleep 1s;
            esultado=$(( $RANDOM % 5 ));
            dadoJugador=${resultados[resultado]};
            echo $dadoJugador;
            tirarDado $dadoJugador;
            let jugador=$jugador+$dadoJugador;
            echo "Posición:"$jugador;
            break;
        done

        echo -e "$ROJO\n Preciona M para tirar dado del Jugador 2";
        read opcionJugador2
        while [[ $opcionJugador2 = "M" || $opcionJugador2 = "m" ]]; do
            echo -e "$ROJO\n Lanzando dado jugador 2";
            sleep 1s;
            resultado=$(( $RANDOM % 5 ));
            dadoComputadora=${resultados[resultado]};
            echo $dadoComputadora;
            tirarDado $dadoComputadora;
            let computadora=$computadora+$dadoComputadora;
            echo "Posición: "$computadora;
            break;
        done
        
    done
}

echo -e "\t\t$NEGRITA$BLANCO################################################$RESET";
echo -e "   $CYAN #####     #    ######  ######  ####### ######  ### #######    #     #####  "
echo -e "   $CYAN#     #   # #   #     # #     # #       #     #  #     #      # #   #     # "
echo -e "   $CYAN#        #   #  #     # #     # #       #     #  #     #     #   #  #       "
echo -e "   $CYAN#       #     # ######  ######  #####   ######   #     #    #     #  #####  "
echo -e "   $CYAN#       ####### #   #   #   #   #       #   #    #     #    #######       # "
echo -e "   $CYAN#     # #     # #    #  #    #  #       #    #   #     #    #     # #     # "
echo -e "   $CYAN #####  #     # #     # #     # ####### #     # ###    #    #     #  #####  "
echo -e "\t\t$NEGRITA$BlLANCO################################################$RESET";




printf "$MORADO INICIAR JUEGO  [Si/No]\n > ";
read opcion;
while [[ $opcion = "Si" || $opcion = "si" || $opcion = "S" || $opcion = "s" || $opcion = "SI" ]]; do
	empiezaElJuego;
    echo ""
	printf "$NEGRITA$BLANCO  ¿Quieres probar tu suerte otra vez? [Si/No]\n > ";
	read opcion;
	if [[ ! $opcion = "Si" || $opcion = "si" || $opcion = "S" || $opcion = "s" || $opcion = "SI" ]]; then
		empiezaElJuego;
	fi
    break;
done
echo -e "\n\t$NEGRITA$MORADO#\tFIN\t#$RESET";

