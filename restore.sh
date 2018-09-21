#! /bin/sh

# iCloudからレストア用のシェルを実行する
echo " start load from iCloud"


echo " install applications..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update


echo " rollback applications and settings"
brew install mackup

cp ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Mackup/.mackup.cfg ~/

mackup restore
brew bundle --global

# TODO: シェル変更の自動化
echo " change shell"
chsh -s /usr/local/bin/zsh

echo " finish!"
