#!/bin/bash

declare -a directories=(
  './vim'
  # './zsh'
  )

setup_config_files() {
  extension=$(echo $1 | cut -c 3-)
  date_and_time=$(date +'%m-%d-%y_%T')
  backup_dir="backup/$date_and_time"

  # make backup directory if one doesn't exist
  mkdir -p $backup_dir

  # create current rc file path
  rc_file_path=~/."${extension}rc"

  # backup and remove the current rc file
  cp $rc_file_path "./$backup_dir/backup.$extension"
  rm $rc_file_path

  # # create a symlink for the new rc to replace the old rc
  ln -s "$PWD/$1/0-index.ignore.$extension" $rc_file_path

  echo 'done!'
}

installFonts() {
  # add the included fonts to the local fonts library
  cp -r ./public/Fonts ~/Library
}

setup_config_files './vim'

installFonts
