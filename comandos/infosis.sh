#!/bin/bash
trap '' 2 #Ignora los CtrC, ignora ^C 
trap "" TSTP #ignora la señal TSTP enviada por CtrlZ ignora ^Z

#sudo apt install neofetch
#clear
printf "****************************** Aquí podrás ver información del sistema ******************************\n"
printf "\n*************** Sistema Operativo ***************\n" 
cat /etc/issue 
uname -m
printf "\n*************** Host ***************\n"; 
uname -n

printf "\n*************** RAM ***************\n"; 
hwinfo --memory | grep "Memory Size" | cut -c3-

printf "\n*************** Kernel ***************\n"
uname -r

printf "\n*************** Shell ***************\n";  
$echo $SHELL --version

printf "\n*************** Resolución ***************\n";
xdpyinfo | grep 'dimensions:' | cut -c3-

printf "\n*************** Entorno de escritorclio ***************\n"; 
env|grep XDG_CURRENT_DESKTOP

printf "\n*************** Terminal ***************\n"; 
neofetch | grep 'Terminal' | cut -c19-


printf "\n*************** Nombre de modelo ***************\n"; 
lscpu | grep 'Nombre del modelo' | cut -c38-


printf "\n*************** GPU ***************\n";
neofetch | grep 'GPU' | cut -c19-

printf "\n*************** Tamaño de memoria ***************\n"; 
df . -h 
grep -m 1 "model name" /proc/cpuinfo | cut -c14-

printf "\n*************** Usuario actual ***************\n"; 
echo $USER

printf "\n*************** Usuarios logeados ***************\n"; 
w

tap 2

