

###################################  Some colors ###################################
red=`tput setaf 1`
green=`tput setaf 2`
Orange=`tput setaf 3`
# blue= `tput setaf 4`
move=`tput setaf 5`
forquas=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`
# echo " $(tput setab 7)  ${red} Wrong Choice .. Try Again ${reset}" 

# ================================== Section That Rename Database
  clear
  echo -e " ${Orange}  Enter Current Database Name: \c ${reset}"
  read dbName
  echo -e " ${Orange}  Enter New Database Name: \c ${reset}"
  read newName
  mv ./DBMS/$dbName ./DBMS/$newName 2>>./.error.log #renaming done here
  # if test $?==0
  if [[ $? == 0 ]]; then
    echo " $(tput setab 7) ${green} Database Renamed Successfully ${reset}"
  else
    echo " $(tput setab 7) ${red} Error Renaming Database  ${reset}"
  fi
  bash mainMenu.sh
