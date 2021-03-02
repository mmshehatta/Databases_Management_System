
###################################  Some colors ###################################
red=`tput setaf 1`
green=`tput setaf 2`
Orange=`tput setaf 3`
# blue= `tput setaf 4`
move=`tput setaf 5`
forquas=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`

# ================================== Section That Create Database
  echo -e "Enter Database Name: \c"
  read dbName
  mkdir ./DBMS/$dbName
  if test $?==0
  then
    echo "$(tput setab 7) Database Created Successfully ${reset}"
    # echo "$(tput setab 7) ${Orange} Database $dbName was Successfully Selected ${reset}"

  else
    echo " $(tput setab 7) ${red} Error Creating Database $dbName ${reset}"
  fi
  bash mainMenu.sh