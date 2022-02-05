This is my personal MacOs devops set-up script.  It is far from complete, but it is at least started. -RB 2/5/22

This script does the following and was run on macOS Monterey v 12.1:
1. Install Brew
2. Install GitHub CLI Brew Cask and initializes auth (requires ssh-keygen depending on repos)
3. Install pyenv Brew Cask to manage python
4. Install Python3.x (does not have :latest feature so version needs to be manually updated), set pyenv global version, and pyenv to .profile path
5. Install Visual Studio Code Brew Cask
6. Install iTerm2
7. Install oh-my-zsh