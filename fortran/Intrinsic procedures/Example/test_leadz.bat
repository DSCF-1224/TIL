@REM STEP.02
@REM 当該バッチファイルの位置するフォルダをカレントディレクトリに指定する
@CD /D %~dp0

@REM STEP.03
@REM コンパイル開始時刻をコンソールに表示
@ECHO START : %DATE% %TIME%

@REM STEP.04
@REM コンパイル

@gfortran -c -std=f2008 -pedantic-errors -Wall -ffree-line-length-none test_leadz.f08
@gfortran -o test_leadz.exe test_leadz.o

@REM STEP.03
@REM コンパイル終了時刻をコンソールに表示
@ECHO END  :  %DATE% %TIME%

@REM STEP.END
@ECHO "Finished"
