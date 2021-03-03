
  echo -e "Enter Table Name: \c"
  read table_name
  column -t -s '|' $table_name 2>>./.error.log
  if test $? !=0
  then
    echo "Error Displaying Table $table_name"
  fi
  bash ../../selectMenu.sh
