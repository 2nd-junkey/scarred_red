#!/bin/sh

echo "start rollback to icloud"


echo "install applications..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo "rollback applications and settings"
brew install mackup
echo "[storage]" >> ~/.mackup.cfg
echo "engine = icloud" >> ~/.mackup.cfg
mackup restore
brew bundle --global

echo "change shell"
chsh -s /usr/local/bin/zsh
echo "install oh-my-zsh"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

zsh
rm -f ~/.zcompdump; compinit


echo "finish!"
