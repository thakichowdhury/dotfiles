# Themes
ZSH_THEME="agnoster"


# Path to your oh-my-zsh installation.
export ZSH="/Users/thaki_britney/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

# set bat theme for syntax highlighting (of fzf, ripgrep, etc)
export BAT_THEME="gruvbox-dark"

# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# removes the hostname at the beginning of the terminal line
export DEFAULT_USER="$(whoami)"

# fd --type f | fzf                                   # Feed the output of fd into fzf
export FZF_DEFAULT_COMMAND='fd --type f'            # Setting fd as the default source for fzf
# fzf                                                 # Now fzf (w/o pipe) will use fd instead of find
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"    # To apply the command to CTRL-T as well

# Android paths for React Native setup
export ANDROID_HOME=/Users/thaki_britney/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# update java sdk path since an error occurs since update to OSX Big Sur
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

