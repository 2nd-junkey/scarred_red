# scarred_red
backup/restore tool for macOS


## features
移行前のバックアップと復旧の一括化。
どこぞの人形師みたくハードさえあればソフトは自動で同期させる。


## requirement
- `iCloud`
- `brew`
- `mackup`
- その他mackupの保存用クラウド


## installation
`$ git clone https://github.com/2nd-junkey/scarred_red.git && scarred_red/setup.sh`

iCloud(とdropbox)にscarred_redディレクトリが作成される。


## Usage
- 普段
  - 自動的にバックアップを作成。
  - 復帰時にバックアップとの差分を確認。
- 復旧
  - iCloud上の`$ scarred_red/restore.sh`を実行する。
  - 手動でバックアップがない分の初期設定をする。


## favorite tools
- alacritty
  - terminal
- pycharm
  - IDE
- gas_mask
  - Host management
- 1password
  - dox management
- Alfred
  - launcher
- gitup
  - GUI git management
