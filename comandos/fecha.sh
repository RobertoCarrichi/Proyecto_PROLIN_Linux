#!/bin/bash

# Este script solo mostrará la fecha actual.

# El uso de $() es para que el contenido de los paréntesis se guarde como un
# solo comando y la salida se cuarde en FECHA.

FECHA=$(date +"%A %u de %B del %Y");

echo " ";
echo "Hola $USER, hoy es $FECHA.";
echo " ";
