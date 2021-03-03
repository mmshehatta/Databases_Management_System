
###################################  Some colors ###################################
red=`tput setaf 1`
green=`tput setaf 2`
Orange=`tput setaf 3`
# blue= `tput setaf 4`
move=`tput setaf 5`
forquas=`tput setaf 6`
white=`tput setaf 7`
reset=`tput sgr0`

 ###################################################################################### 
 # this script to create table after selecting existing Database 
 #  table is a file 
 # meta data is hidden table

  echo -e " ${Orange} Enter Table Name: \c ${reset}"
  read tableName
  # Check if table alredy exists or not
  if [[ -f $tableName ]]; then
 
    echo " ${red} table exist ,select another name ${reset}"
    bash ../../tablesMenu.sh
  fi
  #end if

  #preparing meta data table
  echo -e "${move} Number of Columns: \c ${reset}"
  read column_number
  counter=1
  separator="|"
  row_separator="\n"
  primary_key=""
  meta_data="Field"$separator"Type"$separator"key"

  # starting while loop that loops with number of user entered number
  while [ $counter -le $column_number ]
  do
    echo -e "${Orange} Name of Column No.$counter: \c ${reset}"
    read column_name

    echo -e "${Orange} Type of Column $column_name: ${reset}"
    # --- Select statement to select column datatype
    select variable in "int" "str" "text"
    do
      case $variable in
        int ) col_type="int";break;;
        str ) col_type="str";break;;
		   text ) col_type="text";break;;
        * ) echo "${red} Wrong Data Type ${reset}" ;;
      esac
    done
    #--- end case statemnt

    #check if user need created table to be primary key or not
    if test $primary_key==""
    then 
      echo -e "${forquas} Want Primary Key ? ${reset}"
      select variable in "yes" "no"
      do
        case $variable in
          yes ) primary_key="PK";
          meta_data+=$row_separator$column_name$separator$col_type$separator$primary_key;
          break;;
          no )
          meta_data+=$row_separator$column_name$separator$col_type$separator""
          break;;
          * ) echo "${red}Wrong Choice ${reset}" ;;
        esac
      done
    else
      meta_data+=$row_separator$column_name$separator$col_type$separator""
    fi
    # End if that check column PK

    # ** chehck if loop counter reach num of column to end loop    
    if [[ $counter == $column_number ]] ;
    then
      temp=$temp$column_name
    else
      temp=$temp$column_name$separator
    fi
    ((counter++))
  done
  # ===== End While loop =====

  # fill tables with rows and tables
  touch .$tableName
  echo -e $meta_data  >> .$tableName
  touch $tableName
  echo -e $temp >> $tableName
  if test $?==0
  then
    echo "  ${forquas}  Table Created Successfully ${rest}"
    bash ../../tablesMenu.sh
  else
    echo " $(tput setab 7) ${red}$tableName Dosn't Created ${reset}"
    bash ../../tablesMenu.sh
  fi