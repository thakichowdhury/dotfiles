# Example aliases
oh_my_zsh="~/.oh-my-zsh/"
dotfiles="~/Documents/dotfiles"

alias zc="vim $dotfiles/zsh/0-index.zsh"
alias zcf="vim $dotfiles/zsh/2-functions.zsh"
alias zca="vim $dotfiles/zsh/3-alias.zsh"

alias pj="vim package.json"
alias pjl="vim package-lock.json"

alias ls="tree -L 1"
alias ls2="tree -L 2"

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

# directory alias
alias pjs="cd $projects"
alias personal="~/Google\ Drive/rl"
alias pnl="cd ~/Google\ Drive/rl"
alias learning="cd ~/Documents/learning"

## personal
alias goals="vim ~/Google\ Drive/rl/goals.md"
alias reflections="vim ~/Google\ Drive/rl/reflections.md"

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
alias gts="git stash"
alias gtsd="git add . && git stash && git stash drop"
alias hist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# npm alias
alias nr="npm run"
alias ni="npm install"
