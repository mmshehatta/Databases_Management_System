
  echo -e "Enter Table Name: \c"
  read table_name
  echo -e "Enter Condition Column name: \c"
  read field
  field_id=$(awk 'BEGIN{FS="|"}{if(NR==1){for(i=1;i<=NF;i++){if($i=="'$field'") print i}}}' $table_name)
  if test $field_id==""
  then
    echo "Not Found"
    bash ../../tablesMenu.sh
  else
    echo -e "Enter Condition valueue: \c"
    read value
    res=$(awk 'BEGIN{FS="|"}{if ($'$field_id'=="'$value'") print $'$field_id'}' $table_name 2>>./.error.log)
    if test $res==""
    then
      echo "valueue Not Found"
      bash ../../tablesMenu.sh
    else
      NR=$(awk 'BEGIN{FS="|"}{if ($'$field_id'=="'$value'") print NR}' $table_name 2>>./.error.log)
      sed -i ''$NR'd' $table_name 2>>./.error.log
      echo "Row Deleted Successfully"
      bash ../../tablesMenu.sh
    fi
  fi