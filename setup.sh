#--- install latest version of Brew and add ‘brew’ to user $PATH
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

#--- install GitHub CLI Brew Cask and authenticate GitHub
brew install gh
gh auth login
gh clone macOS-m1-shell #split ^^ and this piece apart to avoid loop

#--- install pyenv Brew Cask: https://opensource.com/article/19/5/python-3-default-mac
brew install pyenv
pyenv install 3.10.2 #latest as of this write up
pyenv global 3.10.2
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc  

#--- install Microsoft Visual Studio Code
brew install --cask visual-studio-code

#--- Install iTerm2 (better shell terminal than vanilla macos shell)
#---     - install Oh My Zsh - pretty bash customizer
brew install --cask iterm2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"