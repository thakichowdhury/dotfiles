# Example aliases
oh_my_zsh="~/.oh-my-zsh/"
dotfiles="~/Documents/dotfiles"


alias zc="vim $dotfiles/zsh/0-index.zsh"
alias zcf="vim $dotfiles/zsh/2-functions.zsh"
alias zca="vim $dotfiles/zsh/4-alias.zsh"

alias pj="vim package.json"
alias pjl="vim package-lock.json"
alias pf="vim Pipfile"

alias ls="tree -L 1"
alias ls2="tree -L 2"

## vim
vimdir="~/.vim"
alias vdir="cd $vimdir"
alias vc="vim ~/.vimrc"

## tmux
alias tmux="tmux -2"

# directories
projects="~/Documents/projects"
projects_active="$projects/active"
google_drive="~/Google\ Drive"

# misc
alias drive="cd $google_drive"
alias notes="cd ~/Documents/notes && vim"
alias df="cd ~/Documents/dotfiles && vim"
alias learning="cd ~/Documents/learning"
alias goals="vim $google_drive/rl/goals.md"
alias reflections="vim $google_drive/rl/reflections.md"
alias pjs="cd $projects"
alias pja="cd $projects_active"
alias pjc="cd $projects/challenges/company/Trunk/hw-project-repo"
alias ctci="cd $projects_active/CtCi-6th-Edition-TypeScript"

## career
alias cl="exec python3 ~/Documents/projects/active/document-templating/main.py"
consulting="~/Documents/consulting"

## projects
alias bsearch="cd $pjs/bookmark-search"

# git alias
alias gbr="git branch"
alias gch="git checkout"        # checks out an existing branch
alias gbm="git checkout -b"     # creates a new git branch
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gr="git reset"            # clears all files that added to git staging
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gts="git stash"
alias gtsd="git add . && git stash && git stash drop"
alias hist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# npm alias
alias nr="npm run"
alias ni="npm install"

# yarn alias
alias yr="yarn run"
alias ya="yarn add --exact"
alias yad="yarn add --exact --dev"
alias ybs="yarn run build && yarn run start"

# python
# alias python=/usr/local/bin/python3
alias pi="pipenv install"

# ruby/rails
alias be="bundle exec"

# postgresql
alias psqlstart="brew services start postgresql"

# work
daylight_dir="~/Documents/daylight"
alias daylight="cd $daylight_dir"
alias dfe="cd $daylight_dir/tribal-monorepo"
alias dbe="cd $daylight_dir/daylight_api"
daylight_admin_auth_token="RUKwBFFMiWtzejLmHrkwg8E9E56spDPP"
alias admin_user_auth_token="echo $daylight_admin_auth_token | pbcopy && echo $daylight_admin_auth_token copied to clipboard"

# school
alias school="$projects/school/cs162"
alias current_pj=""
