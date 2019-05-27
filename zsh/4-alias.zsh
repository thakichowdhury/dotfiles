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

## personal
alias goals="vim ~/Google\ Drive/rl/goals.md"
alias reflections="vim ~/Google\ Drive/rl/reflections.md"

# blackbird
bbroot="~/Documents/blackbird/"
storybook="$bbroot/_storybook"

alias bb="cd $bbroot"

alias sb="cd $storybook"
alias sbm="cd $storybook/storybook-mobile"
alias sbw="cd $storybook/storybook-web"

alias shd="cd $bbroot/_shared"
alias mbl="cd $bbroot/mobile"
alias web="cd $bbroot/web"
alias adm="cd $bbroot/admin"
alias wrk="cd $bbroot/worker"

# blackbird_backup
bb_backup="~/Documents/blackbird_backup"
b_storybook="$bb_backup/_storybook"

alias b_bb="cd $bb_backup"

alias b_sb="cd $storybook"
alias b_sbm="cd $storybook/storybook-mobile"
alias b_sbw="cd $storybook/storybook-web"

alias b_shd="cd $bb_backup/_shared"
alias b_mbl="cd $bb_backup/mobile"
alias b_web="cd $bb_backup/web"
alias b_adm="cd $bb_backup/admin"
alias b_wrk="cd $bb_backup/worker"

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
alias gtsd="git add . && git stash && git stash drop"
alias hist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

# npm alias
alias nr="npm run"
alias ni="npm install"
