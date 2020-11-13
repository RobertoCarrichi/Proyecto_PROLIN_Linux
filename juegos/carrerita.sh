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

#########################################################################################
carrera(){
    case $1 in
		0)	
            printf "\n   _____       ________ ";
            printf "\n _/|__|_\_    |*Inicio*|";
            printf "\n|__ ___ __|°  |********|";
            printf "\n   O   O      | |";
            printf "\n              | |_________________________________________________________________________________________________________\n";
			;;
		1)  printf "\n   _____                                                                                                  ________ ";
            printf "\n _/|__|_\_                                                                                               |* META *|";
            printf "\n|__ ___ __|°                                                                                             |********|";
            printf "\n   O   O                                                                                                 | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
            ;;
		2)	printf "\n       _____                                                                                              ________ ";
            printf "\n     _/|__|_\_                                                                                           |* META *|";
            printf "\n    |__ ___ __|°                                                                                         |********|";
            printf "\n       O   O                                                                                             | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		3)  printf "\n           _____                                                                                          ________ ";
            printf "\n         _/|__|_\_                                                                                       |* META *|";
            printf "\n        |__ ___ __|°                                                                                     |********|";
            printf "\n           O   O                                                                                         | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
        4)	printf "\n               _____                                                                                      ________ ";
            printf "\n             _/|__|_\_                                                                                   |* META *|";
            printf "\n            |__ ___ __|°                                                                                 |********|";
            printf "\n               O   O                                                                                     | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		5)  printf "\n                   _____                                                                                  ________ ";
            printf "\n                 _/|__|_\_                                                                               |* META *|";
            printf "\n                |__ ___ __|°                                                                             |********|";
            printf "\n                   O   O                                                                                 | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		6)	printf "\n                       _____                                                                              ________ ";
            printf "\n                     _/|__|_\_                                                                           |* META *|";
            printf "\n                    |__ ___ __|°                                                                         |********|";
            printf "\n                       O   O                                                                             | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		7)  printf "\n\n                           _____                                                                          ________ ";
            printf "\n                         _/|__|_\_                                                                       |* META *|";
            printf "\n                        |__ ___ __|°                                                                     |********|";
            printf "\n                           O   O                                                                         | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
        8)  printf "\n\n                               _____                                                                      ________ ";
            printf "\n                             _/|__|_\_                                                                   |* META *|";
            printf "\n                            |__ ___ __|°                                                                 |********|";
            printf "\n                               O   O                                                                     | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		9)	printf "\n\n                                   _____                                                                  ________ ";
            printf "\n                                 _/|__|_\_                                                               |* META *|";
            printf "\n                                |__ ___ __|°                                                             |********|";
            printf "\n                                   O   O                                                                 | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		10) printf "\n\n                                       _____                                                              ________ ";
            printf "\n                                     _/|__|_\_                                                           |* META *|";
            printf "\n                                    |__ ___ __|°                                                         |********|";
            printf "\n                                       O   O                                                             | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		11) printf "\n\n                                            _____                                                         ________ ";
            printf "\n                                          _/|__|_\_                                                      |* META *|";
            printf "\n                                         |__ ___ __|°                                                    |********|";
            printf "\n                                            O   O                                                        | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		12)	printf "\n\n                                                _____                                                     ________ ";
            printf "\n                                              _/|__|_\_                                                  |* META *|";
            printf "\n                                             |__ ___ __|°                                                |********|";
            printf "\n                                                O   O                                                    | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		13) printf "\n\n                                                    _____                                                 ________ ";
            printf "\n                                                  _/|__|_\_                                              |* META *|";
            printf "\n                                                 |__ ___ __|°                                            |********|";
            printf "\n                                                    O   O                                                | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
        14)	printf "\n\n                                                        _____                                             ________ ";
            printf "\n                                                      _/|__|_\_                                          |* META *|";
            printf "\n                                                     |__ ___ __|°                                        |********|";
            printf "\n                                                        O   O                                            | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		15) printf "\n\n                                                            _____                                         ________ ";
            printf "\n                                                          _/|__|_\_                                      |* META *|";
            printf "\n                                                         |__ ___ __|°                                    |********|";
            printf "\n                                                            O   O                                        | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		16)	printf "\n\n                                                                _____                                     ________ ";
            printf "\n                                                              _/|__|_\_                                  |* META *|";
            printf "\n                                                             |__ ___ __|°                                |********|";
            printf "\n                                                                O   O                                    | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		17) printf "\n\n                                                                    _____                                 ________ ";
            printf "\n                                                                  _/|__|_\_                              |* META *|";
            printf "\n                                                                 |__ ___ __|°                            |********|";
            printf "\n                                                                    O   O                                | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
        18) printf "\n\n                                                                        _____                             ________ ";
            printf "\n                                                                      _/|__|_\_                          |* META *|";
            printf "\n                                                                     |__ ___ __|°                        |********|";
            printf "\n                                                                        O   O                            | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		19)	printf "\n\n                                                                            _____                         ________ ";
            printf "\n                                                                          _/|__|_\_                      |* META *|";
            printf "\n                                                                         |__ ___ __|°                    |********|";
            printf "\n                                                                            O   O                        | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		20) printf "\n\n                                                                                _____                     ________ ";
            printf "\n                                                                              _/|__|_\_                  |* META *|";
            printf "\n                                                                             |__ ___ __|°                |********|";
            printf "\n                                                                                O   O                    | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
        21) printf "\n\n                                                                                    _____                 ________ ";
            printf "\n                                                                                  _/|__|_\_              |* META *|";
            printf "\n                                                                                 |__ ___ __|°            |********|";
            printf "\n                                                                                    O   O                | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		22)	printf "\n\n                                                                                        _____             ________ ";
            printf "\n                                                                                      _/|__|_\_          |* META *|";
            printf "\n                                                                                     |__ ___ __|°        |********|";
            printf "\n                                                                                        O   O            | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
		23)	printf "\n\n                                                                                            _____         ________ ";
            printf "\n                                                                                          _/|__|_\_      |* META *|";
            printf "\n                                                                                         |__ ___ __|°    |********|";
            printf "\n                                                                                            O   O        | |       ";
            printf "\n_________________________________________________________________________________________________________|_|   \n\n";
			;;
        24)	printf "\n\n                                                                                                _____     ________ ";
            printf "\n                                                                                              _/|__|_\_  |* META *|";
            printf "\n                                                                                             |__ ___ __|°|********|";
            printf "\n                                                                                                O   O    | |       ";
            printf "\n_________________________________________________________________________________________________________|_|       \n\n";
			;;
		25) echo -e "\n8****8                                    8  ";
            echo -e "8    * eeeee eeeee eeeee eeeee eeeee eeee 88 ";
            echo -e "8e     8   8 8   8 8   8 8   *   8   8    88 ";
            echo -e "88  ee 8eee8 8e  8 8eee8 8eeee   8e  8eee 88 ";
            echo -e "88   8 88  8 88  8 88  8    88   88  88      ";
            echo -e "88eee8 88  8 88  8 88  8 8ee88   88  88ee 88 ";
            echo -e "":
            printf "\n\n                                                                                                          ________    _____    ";
            printf "\n                                                                                                         |* META *| _/|__|_\_  ";
            printf "\n                                                                                                         |********||__ ___ __|°";
            printf "\n                                                                                                         | |          O   O    ";
            printf "\n_________________________________________________________________________________________________________|_|               \n\n";
			;;
        *)  echo -e "\n8****8                                    8  ";
            echo -e "8    * eeeee eeeee eeeee eeeee eeeee eeee 88 ";
            echo -e "8e     8   8 8   8 8   8 8   *   8   8    88 ";
            echo -e "88  ee 8eee8 8e  8 8eee8 8eeee   8e  8eee 88 ";
            echo -e "88   8 88  8 88  8 88  8    88   88  88      ";
            echo -e "88eee8 88  8 88  8 88  8 8ee88   88  88ee 88 ";
            echo -e "";
            printf "\n\n                                                                                                          ________    _____    ";
            printf "\n                                                                                                         |* META *| _/|__|_\_  ";
            printf "\n                                                                                                         |********||__ ___ __|°";
            printf "\n                                                                                                         | |          O   O    ";
            printf "\n_________________________________________________________________________________________________________|_|               \n\n";
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
        printf "\nNo teclees nada, sólo espera 3 segundos...";
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

