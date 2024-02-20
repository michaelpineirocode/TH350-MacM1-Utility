#!/bin/bash


# CLI Tools
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo export PATH="/usr/local/opt/python/libexec/bin:$PATH" >> ~/.zshrc
source ~/.zshrc
brew update && brew upgrade

# Python
brew install python
brew install python-tk@3.9

# wine
rm -r "$(brew --prefix)/Caskroom/wine-stable"
brew install --cask --no-quarantine wine-stable

# install this program
mkdir ~/.TH-350-Utility
mv utility ~/.TH-350-Utility/utility
mv registers ~/.TH-350-Utility/registers
mv TH-350.exe ~/.TH-350-Utility/TH-350.exe
