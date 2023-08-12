#!/usr/bin/env sh

# replace system config files with those in the dotfiles directory
symlink_config_files() {
  extension=$1
  # create current rc file path
  rc_file_path=~/."${extension}rc"

#   # backup and remove the current rc file, if one exists
  create_backups $rc_file_path $extension

  # create a symlink for the new rc to replace the old rc
  dotfile_config_path="$ROOT_DIR/$extension/0-index.ignore.$extension"

  # symlink source_path -> target_path
  ln -s $dotfile_config_path $rc_file_path
  echo "Created symlink from $rc_file_path to $dotfile_config_path!"
}

create_backups() {
  rc_file_path=$1
  rc_extension="$2rc"
  date_and_time=$(date +'%m-%d-%y_%T')
  backup_dir="$ROOT_DIR/backup/$date_and_time"

  # make backup directory if one doesn't exist
  mkdir -p $backup_dir

  if [[ -f $rc_file_path ]]
  then
    cp $rc_file_path "./$backup_dir/backup.$rc_extension"
    rm $rc_file_path
  fi
}

