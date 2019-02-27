# CD #

## 目次 ##

* [参考文献](#参考文献)
* [使用方法](#使用方法)
  * [cmd.exe に投入した BAT ファイル自身の path を取得する](#cmdexe-に投入した-bat-ファイル自身の-path-を取得する)
* [参考文献](#参考文献)

## 使用方法 ##

### cmd.exe に投入した BAT ファイル自身の path を取得する ###

```Batchfile
CD /D %~dp0
```

## 参考文献 ##

* [Microsoft Docs](https://docs.microsoft.com/ja-jp/)
  * [Windows Server](https://docs.microsoft.com/ja-jp/windows-server/)
    * [Windows Commands](https://docs.microsoft.com/ja-jp/windows-server/administration/windows-commands/windows-commands)
      * [CD](https://docs.microsoft.com/ja-jp/windows-server/administration/windows-commands/cd)