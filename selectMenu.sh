
###################################  Some colors ###################################
red=`tput setaf 1`
green=`tput setaf 2`
Orange=`tput setaf 3`
# blue= `tput setaf 4`
move=`tput setaf 5`
forquas=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`


  echo -e "\n\n ${reset}  ${Orange} $(tput setab 7)+---------------  Select Menu--------------------+ ${reset}" 
  echo "1.) ${Orange} Select All Columns of a Table              ${reset}"
  echo "2.) ${green} Select Specific Column from a Table       ${reset} "
  echo "3.) ${move} Back To Tables Menu                       ${reset}  "
  echo "4.) ${white} Back To Main Menu                          ${reset} "
  echo "5.) ${forquas} Exit                                       ${reset} "
  echo " ${reset}  ${Orange} $(tput setab 7)+-----------------------------------------------+ ${reset}" 
  echo -e "Enter Choice: \c"
  read ch
  case $ch in
    1) bash ../../selectAll.sh ;;
    2) bash ../../selectCol.sh ;;
    3) clear; bash ../../tablesMenu.sh ;;
    4) clear; cd ../.. 2>>./.error.log; bash mainMenu.sh ;;
    5) exit ;;
    *) echo "${red} Wrong Choice ${reset}" ; bash selectMenu.sh;
  esac
