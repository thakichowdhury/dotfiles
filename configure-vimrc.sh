#!/bin/bash

configureVimRC() {
  mkdir backup
  mv ~/.vimrc ./backup/backup.vim
  echo "source $PWD/.vimrc" > ~/.vimrc
  echo 'done!'
}

configureVimRC
