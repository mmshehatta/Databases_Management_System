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

# ================================== Section That Select Database
  echo -e "Enter Database Name: \c"
  read dbName
  cd ./DBMS/$dbName 2>>./.error.log 
  if [[ $? == 0 ]]; then  #$? = 0 that means the previus command Successfully run
    echo $? 
    echo "$(tput setab 7) ${Orange} Database $dbName was Successfully Selected ${reset}"
    bash ../../tablesMenu.sh   #go back to file path after cd ./DBMS/$dbName  command 
  else
    # clear
    echo "$(tput setab 7) ${move}  Database $dbName wasn't found ${reset}"
    bash mainMenu.sh

  fi