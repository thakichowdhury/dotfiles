# Themes
ZSH_THEME="agnoster"


# Path to your oh-my-zsh installation.
export ZSH="/Users/thaki_britney/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh


# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"


export DEFAULT_USER="$(whoami)"

# fd --type f | fzf                                   # Feed the output of fd into fzf
export FZF_DEFAULT_COMMAND='fd --type f'            # Setting fd as the default source for fzf
# fzf                                                 # Now fzf (w/o pipe) will use fd instead of find
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"    # To apply the command to CTRL-T as well
