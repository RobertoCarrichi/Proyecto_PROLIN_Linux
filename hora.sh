#!/bin/bash

# Este script mostrará la hora actual.

# $() Funciona para encapsular una instrucción y la salida se cuarda en la variable HORA.
HORA=$(date +%R);

echo " ";
echo " Que tal $USER, me contaron que querías saber la hora. Son las $HORA hrs.";
echo " ";
echo " Uh, y con $(date +%-S) segundos.";
echo " ";
