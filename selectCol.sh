
  echo -e "Enter Table Name: \c"
  read table_name
  echo -e "Enter Column Number: \c"
  read column_name
  awk 'BEGIN{FS="|"}{print $'$column_name'}' $table_name
  bash ../../selectMenu.sh