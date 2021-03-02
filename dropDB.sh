
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

# ================================== Section That Drop Database

  echo -e "${Orange}  Enter Database Name: \c ${reset}"
  read dbName
  rm -r ./DBMS/$dbName 2>>./.error.log
  if [[ $? == 0 ]] ;then
    echo " $(tput setab 7) ${green} Database Dropped Successfully ${reset}"
  else
    echo " $(tput setab 7) ${red}  Database Not found ${reset}"
  fi
  bash mainMenu.sh
