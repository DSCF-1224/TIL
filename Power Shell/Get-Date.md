# Get-Date #

## 目次 ##

* [使用方法](#使用方法)
* [参考文献](#参考文献)

## 使用方法 ##

```PowerShell
# 一切オプションを付さない場合
PS C:\Users\Hoge> Get-Date

2019年7月31日 22:54:37


PS C:\Users\Hoge>
```

### `-Format` の利用 ###

```PowerShell
PS C:\Users\Hoge> Get-Date -Format "yyyy"
2019
PS C:\Users\Hoge> Get-Date -Format "yy"
19
PS C:\Users\Hoge> Get-Date -Format "yyyyMMdd"
20190731
```

## 参考文献 ##

* [PowerShell Documentation](https://docs.microsoft.com/ja-jp/powershell/?view=powershell-6)
  * [スクリプト作成](https://docs.microsoft.com/ja-jp/powershell/scripting/overview?view=powershell-6)
    * [Get-Date](https://docs.microsoft.com/ja-jp/powershell/module/Microsoft.PowerShell.Utility/Get-Date?view=powershell-6)
* [【ﾁｪｼｬわら】PowerShellとは、から学ぶ入門者の教科書-脱コマンドプロンプト- | Grin Like a Cheshire Boy.](https://cheshire-wara.com/)
  * [逆引き！PowerShellで現在の日付や時刻を取得する方法とは？フォーマットの変更は？【Get-Date】](https://cheshire-wara.com/powershell/ps-cmdlets/system-service/get-date/)

<!-- EOF -->
