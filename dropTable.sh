
  echo -e "Enter Table Name: \c"
  read table_name
  rm $table_name .$table_name 2>>./.error.log
  if test $?==0
  then
    echo "Table Dropped Successfully"
  else
    echo "Error Dropping Table $table_name"
  fi
  bash ../../tablesMenu.sh