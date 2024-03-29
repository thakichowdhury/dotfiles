# install xcode command line tools
echo "Installing Xcode command line tools"
eval 'xcode-select --install'

# install oh-my-zsh
echo "Installing oh-myzsh"
eval 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'

# install Homebrew
echo "Installing Homebrew"
eval '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'

declare -a packages=(
  # core
  'vim'
  'git'
  'zsh'
  'tree'
  'ruby'
  'node'
  'python'
  'fd'
  'bat'
  'fzf'
  'ripgrep'
  'slack'
  '--cask google-drive'
  '--cask 1password'
  '--cask iterm2'
  '--cask zoom'
  '--cask obsidian'
  '--cask flux'
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
  '--cask notion'
  # mongodb
  'mongodb-community@5.0'
)

for package in "${packages[@]}"; do
  echo "Installing $package"
  eval "brew install $package"
done
