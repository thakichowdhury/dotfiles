#!/usr/bin/env sh

ROOT_DIR="$(dirname "$(readlink -f "${BASH_SOURCE[0]}")")"

if [[ ! -d "$ROOT_DIR" ]]
then
  ROOT_DIR="$PWD"
fi

source "$ROOT_DIR/bin/setup/populate-index.sh"
source "$ROOT_DIR/bin/setup/symlink-config-files.sh"
source "$ROOT_DIR/bin/setup/install-fonts.sh"

declare -a config_directories=(
  "vim"
  "zsh"
  )

echo "SETUP// ROOT_DIR: $ROOT_DIR"
# create bridge files for each config
populate_index
# # create symlink from each dotfile config to root config
# for directory in "${directories[@]}"; do
#  symlink_config_files $directory
# done
# # install desired fonts
# install_fonts

