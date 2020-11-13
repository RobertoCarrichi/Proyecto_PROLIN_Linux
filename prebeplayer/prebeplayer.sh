#!/bin/bash

# Este script realizará la ejecución de un reproductor de canciones.

# Declaración y asignación de variables globales las cuales servirán para añadir colores
# por medio de códigos de escape.

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

bienvenida(){
clear;
echo -e "    $AZULCLARO    ,ggggggggggg,                                                                                                      "; 
echo -e "    $AMARILLO  dP\"\"\"88\"\"\"\"\"\"Y8,                   ,dPYb,                           ,dPYb,                                           ";
echo -e "    $AZULCLARO  Yb,  88      \`8b                   IP'\`Yb                           IP'\`Yb                                           ";
echo -e "    $BLANCO   \`\"  88      ,8P                   I8  8I                           I8  8I                                           ";
echo -e "    $BLANCO       88aaaad8P\"                    I8  8'                           I8  8'                                           ";
echo -e "    $BLANCO       88\"\"\"\"\"    ,gggggg,   ,ggg,   I8 dP        ,ggg,   gg,gggg,    I8 dP    ,gggg,gg  gg     gg   ,ggg,    ,gggggg, ";
echo -e "    $AZULCLARO       88         dP\"\"\"\"8I  i8\" \"8i  I8dP   88gg i8\" \"8i  I8P\"  \"Yb   I8dP    dP\"  \"Y8I  I8     8I  i8\" \"8i   dP\"\"\"\"8I ";
echo -e "    $AMARILLO       88        ,8'    8I  I8, ,8I  I8P    8I   I8, ,8I  I8'    ,8i  I8P    i8'    ,8I  I8,   ,8I  I8, ,8I  ,8'    8I ";
echo -e "    $AZULCLARO       88       ,dP     Y8, \`YbadP' ,d8b,  ,8I   \`YbadP' ,I8 _  ,d8' ,d8b,_ ,d8,   ,d8b,,d8b, ,d8I  \`YbadP' ,dP     Y8,";
echo -e "    $BLANCO       88       8P      \`Y8888P\"Y8888P'\"Y88P\"'  888P\"Y888PI8 YY88888P8P'\"Y88P\"Y8888P\"\`Y8P\"\"Y88P\"888888P\"Y8888P      \`Y8";
echo -e "    $BLANCO                                                          I8                                  ,d8I'                    ";
echo -e "    $BLANCO                                                          I8                                ,dP'8I                     ";
echo -e "    $AZULCLARO                                                          I8                               ,8\"  8I                     ";
echo -e "    $AMARILLO                                                          I8                               I8   8I                     ";
echo -e "    $AZULCLARO                                                          I8                               \`8, ,8I                     ";
echo -e "    $BLANCO                                                          I8                                \`Y8P\"                      ";

}
mostrarControles(){
	echo -e " $MORADO[$BLANCO s$MORADO ] $MORADO[$BLANCO espacio$MORADO ]$NEGRITA$AMARILLO Pausa";
	echo -e " $MORADO[$BLANCO f$MORADO ]$NEGRITA$AMARILLO Siguiente pista";
	echo -e " $MORADO[$BLANCO d$MORADO ]$NEGRITA$AMARILLO Volver a la anterior";
	echo -e " $MORADO[$BLANCO b$MORADO ]$NEGRITA$AMARILLO Repetir";
	echo -e " $MORADO[$BLANCO .$MORADO ]$NEGRITA$AMARILLO Adelantar";
	echo -e " $MORADO[$BLANCO ,$MORADO ]$NEGRITA$AMARILLO Atrasar";
	echo -e " $MORADO[$BLANCO +$MORADO ]$NEGRITA$AMARILLO Subir volumen";
	echo -e " $MORADO[$BLANCO -$MORADO ]$NEGRITA$AMARILLO Bajar volumen";
	echo -e " $MORADO[$BLANCO q$MORADO ]$NEGRITA$AMARILLO Finalizar de la reproducción e ir al menú principal.";
	echo -e " $MORADO[$BLANCO h$MORADO ]$NEGRITA$AMARILLO Visualizar más opciones. ";
}
############################################# 
#  AQUÍ COMIENZA LA EJECUCIÓN DEL PROGRAMA  #
#############################################

RUTA_EJECUCION=$(pwd);

# Se buscará la carpeta de música o music, en caso que no la encuentre, se utilizará 
# ubicación actual.
if [ -d ~/Music ];
then
  	RUTA_ACTUAL=~/Music;
else
	if [ -d ~/Música ]
	then
		RUTA_ACTUAL=~/Music;
	else
		RUTA_ACTUAL=$(pwd);
	fi
fi
cd "$RUTA_ACTUAL"; 
echo "$(pwd)";

SALIR="6";
while [[ "$op" != "$SALIR" ]]; do

	# Con la opción W se hará una búsqueda por palabras enteras.
	INSTALADO=$(dpkg --get-selections | grep -w mpg123 | grep -w install)
	
	if [ "$INSTALADO" = "" ]; then
	    echo -e " Hacen falta algunos complementos para que puedas hacer uso del reproductor. Un momento..."
		sudo apt-get install mpg123;
		echo -e "¡LISTO!";
		sleep 5s;
	else
		bienvenida;

	 	# Se indicará la carpeta actual donde se encuentra el usuario.
		# La opción "-e" indica que soporta los códigos de escape ANSI.
		echo -e "$AZULCLARO \n Esta es tu ruta actual:";
		echo -e "$AZULCLARO ----------------------------------------------------------------------------------------------";
		echo -e  "\t\t$MORADO $(pwd) $RESET";
		echo -e "$AZULCLARO ----------------------------------------------------------------------------------------------";
		echo -e "$BLANCO ¡Elige$AMARILLO con el número $BLANCO una de las siguientes opciones para comenzar! \n $RESET";

		# Se mostrarán las opciones que tiene el usuario. 
		echo -e " $NEGRITA$AMARILLO 1.$BLANCO Reproducir el contenido ";
		echo -e " $AMARILLO 2.$BLANCO Cambiar de directorio";
		echo -e " $AMARILLO 3.$BLANCO Subir una carpeta";
		echo -e " $AMARILLO 4.$BLANCO Ver el contenido de la carpeta actual.";
		echo -e " $AMARILLO 5.$BLANCO Listar opciones del reproductor";
		echo -e " $AMARILLO 6.$BLANCO Salir";
		printf "\n ¿Qué deseas hacer? \n > ";
		read eleccion;
		  
		# Volver a la combinación de colores del sistema.
		echo -e "$RESET";

		case $eleccion in
		    1)
	# Verificar si no tiene canciones que reproducir.
				bienvenida;
				echo -e "\n\t$BLANCO Puedes realizar las siguientes acciones, utilízalas con la tecla que se especifica:\n $RESET";
				mostrarControles;
				# Inicia el reproductor en la ubicación actual.
		 		mpg123 -q $RUTA_ACTUAL/*.mp3;
		 		clear;
		 	;;
			2)
				# Ha elegido cambiar de directorio.

				echo -e "$MORADO Introduce la ruta a la que deseas ir: $RESET $BLANCO "  
				read -e NUEVA_RUTA;

				if [ -d $NUEVA_RUTA ];
				then
					cd "$NUEVA_RUTA";
					# Ya que cambió de directorio, se actualiza a la ruta.
					RUTA_ACTUAL=$(pwd);
				  	echo -e "$NEGRITA $AMARILLO ¡LA RUTA HA CAMBIADO!";
				else	
					echo -e "$ROJO ¡No existe el directorio!$BLANCO No cambiarás de directorio.";
				fi
			    sleep 1.6s;
			    clear;
			;;
			3) 
				cd "$RUTA_ACTUAL";
				cd ..;
				RUTA_ACTUAL=$(pwd); # Se actualiza la ruta a la posición actual.
				echo -e "$NEGRITA $AMARILLO ¡LA RUTA HA CAMBIADO!";
				sleep 1.6s;
				clear;
			;;
			4) 
				bienvenida;
				echo -e "\n $BLANCO Este es el contenido del directorio en: ";
				echo -e "$AZULCLARO ----------------------------------------------------------------------------------------------";
				echo -e  "\t\t$MORADO $RUTA_ACTUAL $RESET";
				echo -e "$AZULCLARO ----------------------------------------------------------------------------------------------$RESET";
				
				# Se buscará la ruta a el comando
				RUTA_ARBOL=$(find ~/ -type f -name arbol1.sh);
				# Se ejecutará el comando arbol
				/bin/bash $RUTA_ARBOL;
				echo -e "\n\t$AZULCLARO ¡Presiona enter y vuelve al menú para continuar!";
				read; # Genera una pausa hasta que el usuario presione enter.
				clear;
			;;
			5)
				bienvenida;
				# Mostrar las opciones sin reproducción.
				echo -e "\n\tEstas son las opciones que ofrece el reproductor (cuando está en ejecución).\n";
				mostrarControles;					
				echo -e "\n\t$AZULCLARO ¡Presiona enter y vuelve al menú para continuar!";
				read; 
				clear;
			;;
			6)
				break;	
			;;
			*) 
				echo -e "$AMARILLO	¡CHISPAS! $BLANCO Has elegido una opción inválida. Ten más cuidado la próxima vez."
				echo -e "\n\t$MORADO Volverás al menú principal."
				sleep 3.5s; # Genera una pausa y continúa hasta que terminen los 3.5 segundos.
				clear;
				break;
			  ;;
		  esac
	  fi
done

echo -e "\t$NEGRITA$AZUL##################################################################$RESET";
echo -e "\t$NEGRITA$AZUL#$BLANCO      GRACIAS POR HACER USO DEL REPRODUCTOR, HASTA LUEGO. $AZUL      #$RESET";
echo -e "\t$NEGRITA$AZUL##################################################################$RESET\n";

# Se regresa al usuario a la ruta donde ejecutó el programa.
cd "$RUTA_EJECUCION";