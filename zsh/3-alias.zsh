# Example aliases
oh_my_zsh="~/.oh-my-zsh/"
oh_my_custom="$oh_my_zsh/custom"

alias zc="vim ~/.zshrc"
alias zcc="vim ~/.oh-my-zsh/custom"
alias zca="vim $oh_my_custom/alias.zsh"
alias zcf="vim $oh_my_custom/functions.zsh"

alias pj="vim package.json"
alias pjl="vim package-lock.json"

alias ls="tree -L 1"
alias t2="tree -L 2"

# directories
alias df="cd ~/Documents/dotfiles"

## vim
vimdir="~/.vim"
alias vdir="cd $vimdir"
alias vc="vim ~/.vimrc"

## tmux
alias tmux="tmux -2"

## personal
projects="~/Documents/projects"

## blackbird
bbroot="~/Documents/blackbird/"
storybook="$bbroot/_storybook"

# directory alias
alias pjs="cd $projects"

alias bb="cd $bbroot"

alias sb="cd $storybook"
alias sbm="cd $storybook/storybook-mobile"
alias sbw="cd $storybook/storybook-web"

alias shd="cd $bbroot/_shared"
alias mbl="cd $bbroot/mobile"
alias web="cd $bbroot/web"
alias adm="cd $bbroot/admin"

# git alias
alias gbr="git branch"
alias gch="git checkout"
alias gbm="git checkout -b"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gpl="git pull"
alias gts="git stash"
alias gtsd="git stash && git stash drop"
alias hist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# npm alias
alias nr="npm run"
alias ni="npm install"
