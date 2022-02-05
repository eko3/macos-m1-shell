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

# Borrowed some of wookiee89's setup of iterm and o-m-z https://github.com/wookiee89/wookiee-macbook-setup
#--- Install Powerline fonts
cd ~
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

#--- Install PowerLevel10k theme
mkdir .powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
echo "[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh" >>! ~/.zshrc

### MANUAL STEP
#   Install Cascadia Code PL ttf from: https://github.com/microsoft/cascadia-code/releases
#   Link iTerm2 config:  iTerm2 > Preferences [General > Preferences] and select 'Load preferences from custom folder or URL'
#   Quit and restart iTerm2 to reload shell env with new preferences