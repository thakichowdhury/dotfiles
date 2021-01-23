#!/usr/bin/env bash

VIMDIR=./vim
ZSHDIR=./zsh
PWDLEN="${#PWD}"

declare -a directories=(
  "./vim"
  "./zsh"
  )

# iterates through all the files in given directories
# and sources them into an index file
make_index () {
  for f in $1/*
  do
    if [[ $f =~ "index" ]];
    then
      echo 'clearing existing index file'
      > $f
    else
      file=$(echo $f | cut -c 3-)
      file_absolute_path="$PWD/$file"
      extension=$(echo $1 | cut -c 3-)
      index_file="$1/0-index.ignore.$extension"
      echo "sourcing from $file_absolute_path"
      echo source $file_absolute_path >> $index_file
    fi
  done
}

for d in ${directories[@]}
do
  echo "creating index file at $d"
  make_index $d
done

