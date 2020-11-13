#!/bin/bash

trap '' 2;
trap '' 20;

# En este script tendrá la función de proporcionarle al usuario la información necesaria
# para que el usuario sepa que hacer en caso que requiera ayuda.
clear;

RESET="\033[0m";
NEGRITA="\033[1m";
AMARILLO="\033[38;5;11m";
AZUL="\033[1;34m";
BLANCO="\033[1;36m";
AZULCLARO="\033[1;95m";
MORADO="\033[0;35m";
VERDE="\033[1;32m";
SALIR="6";

echo -e " ";
echo -e "\t\t\t $AZULCLARO BIENVENIDO AL PROYECTO$AMARILLO PROLIN ";
echo -e " ";
echo -e "$BLANCO Durante la ejecución de este proyecto podrás hacer uso de todos los comandos de";
echo -e "$BLANCO tu sistema operativo GNU/LINUX y de los que te presentamos en la siquiente tabla. ";
echo -e " ";
echo -e "$AZUL  _______________________________________________________________________________ ";
echo -e "$AZUL |   ${MORADO}COMANDO${AZUL}   |  ${VERDE}  FUNCIÓN  ${AZUL}                                                    |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |    ${AMARILLO}ayuda${AZUL}    |$BLANCO Muestra esta pantalla de información.  ${AZUL}                         |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |    ${AMARILLO}arbol${AZUL}    |$BLANCO Comando que muestra la estructura de archivos contenidos en un ${AZUL} |";
echo -e "$AZUL |             |$BLANCO directorio.    ${AZUL}                                                 |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |    ${AMARILLO}fecha${AZUL}    |$BLANCO Muestra la hora actual en pantalla.    ${AZUL}                         |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |     ${AMARILLO}hora${AZUL}    |$BLANCO Presenta la hora actual en pantalla.   ${AZUL}                         |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |   ${AMARILLO}busqueda${AZUL}  |$BLANCO Ejecuta la búsqueda de un archivo dado su nombre y el ${AZUL}          |";
echo -e "$AZUL |             |$BLANCO directorio donde se buscará. ${AZUL}                                   |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |   ${AMARILLO}infosis${AZUL}   |$BLANCO Presenta información de los usuarios del equipo, así como  la ${AZUL}  |";
echo -e "$AZUL |             |$BLANCO arquitectura, uso de memoria y versión del sistema operativo. ${AZUL}  |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |   ${AMARILLO}ahorcado${AZUL}  |$BLANCO Inicia la ejecución del clásico juego de ahorcado.${AZUL}              |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |     ${AMARILLO}dado${AZUL}    |$BLANCO Ejecuta un sencillo en el que debes probar tu suerte para  ${AZUL}     |";
echo -e "$AZUL |             |$BLANCO adivinar un número.         ${AZUL}                                    |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL | ${AMARILLO}prebeplayer${AZUL} |$BLANCO Inicia un reproductor mp3.     ${AZUL}                                 |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |   ${AMARILLO}creditos${AZUL}  |$BLANCO Presenta los créditos de los colaboradores del proyecto. ${AZUL}       |";
echo -e "$AZUL |-------------|-----------------------------------------------------------------|";
echo -e "$AZUL |    ${AMARILLO}salir${AZUL}    |$BLANCO Finaliza la ejecución del proyecto.${AZUL}                             |";
echo -e "$AZUL |_____________|_________________________________________________________________|";
echo -e "$AZUL ";
