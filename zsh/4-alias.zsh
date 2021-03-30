# Example aliases
oh_my_zsh="~/.oh-my-zsh/"
dotfiles="~/Documents/dotfiles"

alias zc="vim $dotfiles/zsh/0-index.zsh"
alias zcf="vim $dotfiles/zsh/2-functions.zsh"
alias zca="vim $dotfiles/zsh/3-alias.zsh"

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
alias notes="cd $google_drive/notes && vim"
alias df="cd ~/Documents/dotfiles && vim"
alias learning="cd ~/Documents/learning"
alias goals="vim $google_drive/rl/goals.md"
alias reflections="vim $google_drive/rl/reflections.md"
alias pjs="cd $projects_active"

## career
consulting="~/Documents/consulting"
blast_app="$consulting/blast-app"
alias bapp="cd $blast_app"
alias bmob="cd $blast_app/packages/mobile"
alias bweb="cd $blast_app/packages/web"
alias bcom="cd $blast_app/packages/components"
alias bserv="cd $blast_app/packages/server"

## projects
alias bsearch="cd $pjs/bookmark-search"

# git alias
alias gbr="git branch"
alias gch="git checkout"
alias gbm="git checkout -b"
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
