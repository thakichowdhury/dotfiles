!/usr/bin/env sh

 # replace system config files with those in the dotfiles directory
 setup_config_files() {
   extension=$(echo $1 | cut -c 3-)
   date_and_time=$(date +'%m-%d-%y_%T')
   backup_dir="backup/$date_and_time"

   # make backup directory if one doesn't exist
   mkdir -p $backup_dir

   # create current rc file path
   rc_file_path=~/."${extension}rc"

   # backup and remove the current rc file, if one exists
   if [[ -f $rc_file_path ]]
   then
     cp $rc_file_path "./$backup_dir/backup.$extension"
     rm $rc_file_path
   fi

   # create a symlink for the new rc to replace the old rc
   dotfile_config_path="$PWD/$extension/0-index.ignore.$extension"
   ln -s $dotfile_config_path $rc_file_path
   echo "Created symlink from $rc_file_path to $dotfile_config_path!"
 }

 # add the included fonts to the local fonts library
 installFonts() {
   cp -r ./public/Fonts ~/Library
 }

 # run setup for each directory
 for directory in "${directories[@]}"; do
   setup_config_files $directory
 done

 installFonts
