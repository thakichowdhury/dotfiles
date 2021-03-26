#!/usr/bin/env sh

## ------------ SETUP ------------ ##

# populate index files w/ populate-index.sh
bash ./populate-index.sh

# source 0-index.ignore.zsh in .zshrc
echo source 0-index.ignore.zsh >> ~./.zshrc

# source 0-index.ignore.vim in .vimrc
echo source 0-index.ignore.vim >> ~./.vimrc

## ------------ PACKAGES ------------ ##

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Python3
brew install python3

# NodeJS
brew install node

# Yarn package manager
npm install --global yarn

# trash-cli
brew install trash-cli

## ------------ SOFTWARE ------------ ##

# iTerm2
brew install --cask iterm2

# Slack
brew install --cask slack

# Skitch
brew install --cask skitch

# Google Chrome
brew install --cask google-chrome

# Zoom
brew install --cask zoom

# 1Password
brew install --cask 1password

## ------------ PLUGINS ------------ ##

### ZSH
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## ------------ MISC ------------ ##

# install fonts
cp -r ./public/Fonts ~/Library
