# formatting
format_branch_name() {
  ticket_name=${1//' '/'-'}
  formatted_branch=$2'/'$ticket_name:l
  echo $formatted_branch
  echo $formatted_branch | pbcopy
  git branch -b $formatted_branch
}

# git

## check out remote branch
crb() {
  echo "checking out $1"
  git fetch && git checkout $1
}

## remove node modules, npm and yarn lock files, and reinstalls
clean_directory() {
  echo "removing node modules...\n"
  rm -rf node_modules
  echo "checking for lock files\n"
  if [ -f ./package-lock.json ]; then
    echo "  removing package-lock.json...\n"
    rm package-lock.json
  elif [ -f ./yarn.lock ]; then
    echo "  removing yarn.lock...\n"
    rm yarn.lock
  fi
  echo "installing node modules...\n"
  npm install
}
