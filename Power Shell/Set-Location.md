# Set-Location #

## 目次 ##

* [Power Shell に投入した PS1 ファイル自身の path を取得する](#power-shell-に投入した-ps1-ファイル自身の-path-を取得する)

### Power Shell に投入した PS1 ファイル自身の path を取得する ###

```PowerShell
# [目的]
# 当該 PS1 ファイルが存在するディレクトリを current ディレクトリに指定

# STEP.01
# 当該 PS1 ファイルの絶対パスを取得する
$path_file_ThisPs1File = $MyInvocation.MyCommand.Path

# STEP.02
# 当該 PS1 ファイルが存在するフォルダのパスを取得する
$path_fldr_ThisPs1File = Split-Path -Parent $path_file_ThisPs1File

# STEP.03
# 取得したパスを用いて current ディレクトリを指定する
Set-Location $path_fldr_ThisPs1File
```

## 参考文献 ##

* [PowerShell Documentation](https://docs.microsoft.com/ja-jp/powershell/?view=powershell-6)
  * [スクリプト作成](https://docs.microsoft.com/ja-jp/powershell/scripting/overview?view=powershell-6)
    * [Set-Location](https://docs.microsoft.com/ja-jp/powershell/module/microsoft.powershell.management/set-location?view=powershell-6)
    * [Split-Path](https://docs.microsoft.com/ja-jp/powershell/module/microsoft.powershell.management/split-path?view=powershell-6)
* [GitHub/linguist](https://github.com/github/linguist)
  * [lib/linguist/languages.yml](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
