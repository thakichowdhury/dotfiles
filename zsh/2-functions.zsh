# formatting
create_branch_from_jira() {
  # $1 = ticket name, e.g. Attempt to book again after delay
  # $2 = ticketNumber, e.g. pe-1242

  # replace spaces with dashes
  ticket_name=${1//' '/'-'}
  echo "TICKETNAME: $ticket_name"

  # append ticket name to ticket number, seperated with a dash
  formatted_branch="$2/$ticket_name:l"
  echo $formatted_branch

  # create and checkout new branch
  eval "git checkout -b $formatted_branch"
}

# git

## check out remote branch
crb() {
  echo "checking out $1"
  git fetch && git checkout $1
}

# create and move into new directory
mkd() {
    echo "Making directory $1"
    mkdir $1

    echo "Changing to directory $1"
    cd $1
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
