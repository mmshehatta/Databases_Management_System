

###################################  Some colors ###################################
red=`tput setaf 1`
green=`tput setaf 2`
Orange=`tput setaf 3`
# blue= `tput setaf 4`
move=`tput setaf 5`
forquas=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`
###################################  Main Menu ###################################
  # clear;
  echo -e "\n${white} ====================================================================="
  echo -e "\n${white} ======================     Main Menu     ============================"
  echo -e "\n ${white}====================================================================\n"
  echo " ***********************************"
  echo " * (1). Select DB                  *"
  echo " * (2). Create DB                  *"
  echo " * (3). Rename DB                  *"
  echo " * (4). Drop DB                    *"
  echo " * (5). Show DBs                   *"
  echo " * (6). Exit                       *"
  echo " **********************************"
  echo -e "${white} Enter Choice: \c"
  echo -e "${reset}"   #reset main color

  read ch
  case $ch in
    1)  bash selectDB.sh ;;
    2)  bash createDB.sh ;;
    3)  bash renameDB.sh ;;
    4)  bash dropDB.sh ;;
    5)  ls ./DBMS ; clear;bash mainMenu.sh;;
    6) clear ; exit ;; 
    *) clear; echo " $(tput setab 7)  ${red} Wrong Choice .. Try Again ${reset}" ; bash mainMenu.sh; 
# echo "${blue}red text ${green}green text${reset}"
  esac
