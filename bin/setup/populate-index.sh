#!/usr/bin/env sh

# iterates through all the files in given directories
# and sources them into an index file
create_index_file () {
  config_dir="$ROOT_DIR/$1"
  for f in "$config_dir"/*; do
    if [[ $f =~ "index" ]];
    then
      echo 'clearing existing index file'
      > $f
    else
      extension="${config_dir: -3}"
      index_file="$config_dir/0-index.ignore.$extension"

      echo "config_file: $f, index_file: $index_file"
      echo "source $f" >> $index_file
    fi
  done
}

populate_index() {
  for d in ${config_directories[@]}
  do
    echo "creating index file at $d"
    create_index_file $d
  done
}
