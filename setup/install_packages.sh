# install Homebrew
$(/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)")
$(export PATH="/usr/local/opt/python/libexec/bin:$PATH")


declare -a packages=(
  # core
  'vim'
  'git'
  'zsh'
  'ruby'
  'node'
  'python'
  'fzf'
  'ripgrep'
  '--cask iterm2'
  '--cask zoom'
  '--cask obsidian'
  'flux'
  '--cask alfred'
  '--cask xcodes'

  # optional
  '--cask google-chrome'
  '--cask android-studio'
  'docker'
  '--cask discord'
  '--cask anki'
  '--cask selfcontrol'
  '--cask microsoft-teams'
  '--cask figma'
  # mongodb
  'brew tap mongodb/brew'
  'brew install mongodb-community@5.0'
)

for package in "${packages[@]}"; do
  $(brew install $package)
done
