#!/bin/bash
# Thif script is the program start point
###################################  Some colors ###############
red=`tput setaf 1`
forquas=`tput setaf 6`
move=`tput setaf 5`
Orange=`tput setaf 3`
blue= `tput setaf 4`
green=`tput setaf 2`
reset=`tput sgr0`

mkdir DBMS 2>> ./.error.log
clear #clear screen
echo "${forquas}Welcome To Database Mnagement System program"
echo -e "\nTeam Members :  MShehata & MSalama${reset}"
bash mainMenu.sh

