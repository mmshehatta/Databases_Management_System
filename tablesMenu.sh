 ###################################  Some colors ###################################
red=`tput setaf 1`
green=`tput setaf 2`
Orange=`tput setaf 3`
# blue= `tput setaf 4`
move=`tput setaf 5`
forquas=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`
##################################################################################### 
 # this script to  display table Menu


  clear
  echo "$(tput setab 7) ${forquas}"
  echo -e "\n+--------Tables Menu------------+${reset}"
  echo "1.) Show Existing Tables       "
  echo "2.) Create New Table           "
  echo "3.) Insert Into Table          "
  echo "4.) Select From Table          "
  echo "5.) Delete From Table          "
  echo "6.) Drop Table                 "
  echo "7.) Back To Main Menu          "
  echo "8.) Exit                       "
  echo "+-------------------------------+"
  echo -e "Enter Choice: \c"
  # echo ""
  read ch
  case $ch in
    1)  ls .; bash ../../tablesMenu.sh ;;
    2)  bash ../../createTable.sh ;;
    3)  bash ../../insert.sh;;
    4)  clear; bash ../../selectMenu.sh ;;
    5)  bash ../../deleteFromTable.sh ;;
    6)  bash ../../dropTable.sh ;;
    7) clear; cd ../.. 2>>./.error.log; bash mainMenu.sh ;;
    8) clear;exit ;;
    *) echo "$(tput setab 7) ${red} Wrong Choice ${reset}" ; bash ../../tablesMenu.sh;
  esac