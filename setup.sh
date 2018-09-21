#! /bin/sh

# 必要なソフトの確認/インストール
echo " start setup to backup"
# brew
echo " check brew..."
# TODO: キャッシュはあるけど実体がない場合の処理
if ! type brew
then
    :
fi
# mackup
echo "check mackup..."
if ! type mackup
then
    brew install mackup
fi
mackup backup --force

# レストア用にmackup.cfgをiCloudにアップロード
cp ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/scarred_red/.mackup.cfg ~/

# TODO: インストール/アンインストールに伴う情報更新
# incronで実装予定

echo " finish!"
