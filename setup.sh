#!/bin/bash

declare -a directories=(
  './vim'
  # './zsh'
  )

setup_config_files() {
  extension=$(echo $1 | cut -c 3-)
  date_and_time=$(date +'%m-%d-%y_%T')
  backup_dir="backup/$date_and_time"
  mkdir -p $backup_dir
  cp "$2" "./$backup_dir/backup.$extension"
  echo "source $PWD/$1/0-index.ignore.$extension" > $2
  echo 'done!'
}

installFonts() {
  cp -r ./media/Fonts ~/Library
}

setup_config_files './vim' ~/.vimrc
installFonts
