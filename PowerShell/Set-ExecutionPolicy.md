# Set-ExecutionPolicy #

## 目次 ##

* [使用方法](#使用方法)
* [参考文献](#参考文献)

## 使用方法 ##

```PowerShell
# policyの変更範囲 : 現在のユーザのみ
# localのスクリプトのみ実行可能
# インターネットからDownloadしたものは署名付きのスクリプトのみ実行可能
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned

# 実行時には，以下の警告文が表示される
# =============================================================================================================================== #
# 実行ポリシーの変更
# 実行ポリシーは、信頼されていないスクリプトからの保護に役立ちます。実行ポリシーを変更すると、about_Execution_Policies
# のヘルプ トピック (https://go.microsoft.com/fwlink/?LinkID=135170)
# で説明されているセキュリティ上の危険にさらされる可能性があります。実行ポリシーを変更しますか?
# [Y] はい(Y)  [A] すべて続行(A)  [N] いいえ(N)  [L] すべて無視(L)  [S] 中断(S)  [?] ヘルプ (既定値は "N"): y
# =============================================================================================================================== #
```

## 参考文献 ##

* [PowerShell Documentation](https://docs.microsoft.com/ja-jp/powershell/?view=powershell-6)
  * [スクリプト作成](https://docs.microsoft.com/ja-jp/powershell/scripting/overview?view=powershell-6)
    * [Set-ExecutionPolicy](https://docs.microsoft.com/ja-jp/powershell/module/Microsoft.PowerShell.Security/Set-ExecutionPolicy?view=powershell-6)
* [【ﾁｪｼｬわら】PowerShellとは、から学ぶ入門者の教科書-脱コマンドプロンプト- | Grin Like a Cheshire Boy.](https://cheshire-wara.com/)
  * [逆引き！PowerShellで実行ポリシーを確認する方法【Get-ExecutionPolicy】](https://cheshire-wara.com/powershell/ps-cmdlets/sequrity/get-executionpolicy/)
  * [【Set-ExecutionPolicy】で実行ポリシーを変更する](https://cheshire-wara.com/powershell/ps-cmdlets/sequrity/set-executionpolicy/)

<!-- EOF -->
