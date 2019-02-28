# フォルダ内のファイルを比較する #

## 使用方法 ##

1. タイプセットする TEX/LTX ファイルと同じディレクトリに，下記のバッチファイルを作成する
2. 変数 `name_file_trgt` にタイプセットする TEX/LTX ファイルのファイル名を与える
3. 変数 `name_file_trgt` に与えたファイルが存在しない場合， `latexmk` は起動されず，エラーメッセージが出る

```Batchfile
@REM STEP.01
@REM コンソールへの出力の停止します。
@ECHO OFF

@REM STEP.02
@REM 環境変更のローカル化を開始します。
SETLOCAL

@REM STEP.03
@REM `参照元`となるフォルダのパスを指定します。
SET TrgtFolderPathRef="参照元となるフォルダのパス"

@REM STEP.04
@REM `比較対象`となるフォルダのパスを指定します。
SET TrgtFolderPath="比較対象となるフォルダのパス"

@REM STEP.05
@REM 比較結果を書き込む TXT ファイルを保存するフォルダのパスを指定します。
SET PathWorkSpace="保存するフォルダのパス"

@REM STEP.06
@REM 比較結果を書き込む TXT ファイルのパスを指定します。
SET TempTextFileRef=%PathWorkSpace%\temp_ref.txt
SET TempTextFileTrgt=%PathWorkSpace%\temp_trgt.txt
SET ResultFile=%PathWorkSpace%\result.txt

@REM STEP.07
@REM `参照元`および`比較対象`となるフォルダに含まれるファイルのパスを抽出します。
DIR /C /b /a-d %TrgtFolderPathRef% >> %TempTextFileRef%
DIR /C /b /a-d %TrgtFolderPath% >> %TempTextFileTrgt%

@REM 途中経過をコンソールに出力します。
ECHO target files were picked up

@REM STEP.07
@REM `参照元`と`比較対象`に含まれるファイルの差を抽出します。
FC /n /w %TempTextFileRef% %TempTextFileTrgt% >> %ResultFile%

for /F usebackq %%i in (%TempTextFileRef%) do (
	fc /n /w %TrgtFolderPathRef%\%%i %TrgtFolderPath%\%%i >> %ResultFile%
)

@REM STEP.END
@REM BAT ファイルの処理を終了します。
EXIT /B 0
```

## TIL 内リンク ##

* [cmd/DIR.md](https://github.com/DSCF-1224/TIL/blob/master/cmd/DIR.md)
