# Set-Location #

## 目次 ##

* [使用方法](#使用方法)
  * [Power Shell に投入した PS1 ファイル自身の path を取得する](#power-shell-に投入した-ps1-ファイル自身の-path-を取得する)
* [参考文献](#参考文献)

## 使用方法 ##

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

# 上述の STEP.01 と 02 は次行のように結合することができる
$path_fldr_ThisPs1File = Split-Path -Parent $MyInvocation.MyCommand.Path

# しかし， STEP.01 から 03 までを次行のように直結することはできない
Set-Location Split-Path -Parent $MyInvocation.MyCommand.Path
```

## 参考文献 ##

* [PowerShell Documentation](https://docs.microsoft.com/ja-jp/powershell/?view=powershell-6)
  * [スクリプト作成](https://docs.microsoft.com/ja-jp/powershell/scripting/overview?view=powershell-6)
    * [Set-Location](https://docs.microsoft.com/ja-jp/powershell/module/microsoft.powershell.management/set-location?view=powershell-6)
    * [Split-Path](https://docs.microsoft.com/ja-jp/powershell/module/microsoft.powershell.management/split-path?view=powershell-6)
* [GitHub/linguist](https://github.com/github/linguist)
  * [lib/linguist/languages.yml](https://github.com/github/linguist/blob/master/lib/linguist/languages.yml)
* Qiita
  * [コマンドプロンプト/PowerShell でスクリプト自身のパスを扱う](https://qiita.com/heignamerican/items/a81a1f4de3e34b28d836)
  * [[Powershell]スクリプトの自パスを取得する(Batの%~dp0)](https://qiita.com/wasureru/items/b9bc4a867c1fa38414f2)
