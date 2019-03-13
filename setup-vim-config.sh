#!/bin/bash

configureVimRC() {
  mkdir backup
  mv ~/.vimrc ./backup/backup.vim
  echo "source $PWD/config.vim" > ~/.vimrc
  echo 'done!'
}

installFonts() {
  cp -r Fonts ~/Library
}

configureVimRC
installFonts
