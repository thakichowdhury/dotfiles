# formatting
create_branch_from_jira() {
  ticket_name=${1//' '/'-'}
  echo "TICKETNAME: $ticket_name"
  formatted_branch="$2/$ticket_name:l"
  echo $formatted_branch
  echo $formatted_branch | pbcopy
  # git branch $formatted_branch
  eval "git checkout -b $formatted_branch"
}

# git

## check out remote branch
crb() {
  echo "checking out $1"
  git fetch && git checkout $1
}

## remove node modules, npm and yarn lock files, and reinstalls
## create conditional to keep lock files if given argument
clean_directory() {
  echo "removing node modules...\n"
  rm -rf node_modules

  if [ -f ./package-lock.json ]; then
    package_manager="npm"

    echo "removing package-lock.json...\n"
    rm package-lock.json
  elif [ -f ./yarn.lock ]; then
    package_manager="yarn"

    echo "removing yarn.lock...\n"
    rm yarn.lock
  fi
  echo "installing node modules using $package_manager...\n"

  eval "$package_manager install"
}

# install_dependencies() {
#   echo "checking for node_modules...\n"
  
#   if [ -f node_modules ]; then
#     break;
#   fi

#   eval "
# }

git_blame() {
  file_path=$1
  line=$2
  full_git_blame="git blame --porcelain -L $line $file_path"
  echo $full_git_blame
}
