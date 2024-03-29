migrate_tasks_over() {
  eval "ruby /Users/thakichowdhury/Documents/dotfiles/bin/task_manager/task_manager.rb $@"
}

daylight_remote() {
  eval "ruby /Users/thakichowdhury/Documents/dotfiles/bin/daylight_remote_call.rb $@"
}

trash() {
  echo "Moving $1 to Trash"
  trash-put $1
  tree -L 1
}

running_on_port() {
  lsof -i :$1
}

jira-create-branch() {
    echo "Enter issue type number"
    echo "(1) feature\n(2) bug\n(3) hotfix"
    read issue_type

    # assign issue_type based on user input
    if [[ $issue_type == "1" ]] then
        issue_type="feature"
    elif [[ $issue_type == "2" ]] then
        issue_type="bug"
    elif [[ $issue_type == "3" ]] then
        issue_type="hotfix"
    else
        echo "Error: $issue_type is not an acceptable answer"
        exit 1
    fi

    echo "\n"

    echo "Enter ticket key"
    read ticket_key
    # replace all lower-case chars with uppercase
    ticket_key=$(echo $ticket_key | tr '[a-z]' '[A-Z]')

    echo "\n"

    echo "Enter ticket name"
    read ticket_name
    # replace all non-alphanumeric characters in ticket_name with a - char
    ticket_name="${ticket_name//[^[:alnum:]]/-}"

    echo "\n"

    # assign a branch name from the formatted ticket info
    branch_name="$issue_type/$ticket_key/$ticket_name"

    # create and checkout new git branch
    echo "Checking out branch $branch_name"
    eval "git checkout -b $branch_name"
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

daylight_remote_rails_login() {
  if [[ $1 == "stage" || $1 == "s" ]]; then
    heroku run ADMIN_USER_TOKEN=$RAILS_ADMIN_USER_TOKEN_STAGING rails c --app joindaylight-api-staging
  elif [[ $1 == "prod" || $1 == "p" ]]; then
    heroku run ADMIN_USER_TOKEN=$RAILS_ADMIN_USER_TOKEN_PROD rails c --app joindaylight-api
  else
    heroku run ADMIN_USER_TOKEN=$RAILS_ADMIN_USER_TOKEN_STAGING rails c --app joindaylight-api-development
  fi
}

print_heroku_instances() {
  heroku_instances=(
    "daylight-prod"
    "daylight-stage"
    "daylight-dev"
    "daylight-web-prod"
    "daylight-web-staging"
    "daylight-web-dev"
    "joindaylight-api"
    "joindaylight-api-staging"
    "joindaylight-api-development"
  )

  for ((i = 1; i <= $#heroku_instances; i++)); do
    printf "%s\t\n" "$i ${heroku_instances[i]}"
  done
}

# daylight_remote() {
#   if [[ $1 == "login" ]]; then
#     daylight_remote_rails_login $2
#   elif [[ $1 == "deploy" ]]; then
#     daylight_remote_heroku_deploy
#   fi
# }

daylight_remote_heroku_deploy() {
  print_heroku_instances

  vared -p "Choose heroku instance: " -c chosen_index
  heroku_instance="${heroku_instances[chosen_index]}"

  print "DEPLOYING TO $heroku_instance..."
  git push https://git.heroku.com/$heroku_instance.git develop:main -f
}

daylight_remote_rails_login() {
  if [[ $1 == "stage" || $1 == "s" ]]; then
    heroku run ADMIN_USER_TOKEN=$RAILS_ADMIN_USER_TOKEN_STAGING rails c --app joindaylight-api-staging
  elif [[ $1 == "prod" || $1 == "p" ]]; then
    heroku run ADMIN_USER_TOKEN=$RAILS_ADMIN_USER_TOKEN_PROD rails c --app joindaylight-api
  else
    heroku run ADMIN_USER_TOKEN=$RAILS_ADMIN_USER_TOKEN_STAGING rails c --app joindaylight-api-development
  fi
}
