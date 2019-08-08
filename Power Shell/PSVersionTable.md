# $PSVersionTable #

## 目次 ##

* [使用方法](#使用方法)
* [参考文献](#参考文献)

## 使用方法 ##

### `$PSVersionTable.PSVersion` ###

```PowerShell
$PSVersionTable.PSVersion
# [return]
# Major  Minor  Build  Revision
# -----  -----  -----  --------
# 5      1      17763  592
```

```PowerShell
$PSVersionTable.PSVersion.Major         # return : 5
$PSVersionTable.PSVersion.Minor         # return : 1
$PSVersionTable.PSVersion.Build         # return : 17763
$PSVersionTable.PSVersion.Revision      # return : 592
$PSVersionTable.PSVersion.MajorRevision # return : 0
$PSVersionTable.PSVersion.MinorRevision # return : 592
```

```PowerShell
$PSVersionTable.PSVersion.GetType().FullName               # return : System.Version
$PSVersionTable.PSVersion.Major.GetType().FullName         # return : System.Int32
$PSVersionTable.PSVersion.Minor.GetType().FullName         # return : System.Int32
$PSVersionTable.PSVersion.Build.GetType().FullName         # return : System.Int32
$PSVersionTable.PSVersion.Revision.GetType().FullName      # return : System.Int32
$PSVersionTable.PSVersion.MajorRevision.GetType().FullName # return : System.Int32
$PSVersionTable.PSVersion.MinorRevision.GetType().FullName # return : System.Int32
```

## 参考文献 ##

* [PowerShell Documentation](https://docs.microsoft.com/ja-jp/powershell/?view=powershell-6)
* [【ﾁｪｼｬわら】PowerShellとは、から学ぶ入門者の教科書-脱コマンドプロンプト- | Grin Like a Cheshire Boy.](https://cheshire-wara.com/)
  * [逆引き！PowerShellのバージョンを確認する方法とは？【Get-Host/$PSVersiontable】 | 【ﾁｪｼｬわら】PowerShellとは、から学ぶ入門者の教科書-脱コマンドプロンプト-](https://cheshire-wara.com/powershell/ps-cmdlets/system-service/how-to-check-psversion/)

<!-- EOF -->
